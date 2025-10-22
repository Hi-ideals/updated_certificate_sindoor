package com.hiideals.form

import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured
import org.codehaus.groovy.grails.web.servlet.mvc.GrailsWebRequest
import org.codehaus.groovy.grails.web.util.WebUtils
import com.hiideals.PaymentGetway
import com.hiideals.jobFrom.PaymentInfo
import randomno.RandomNoGenerator

@Transactional(readOnly = true)
@Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])
class InternationalCertificateController {

	static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	// -------------------- CRUD --------------------
	def index(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		respond InternationalCertificate.list(params),
				model: [internationalCertificateInstanceCount: InternationalCertificate.count()]
	}

	def show(InternationalCertificate internationalCertificateInstance) {
		respond internationalCertificateInstance
	}

	def create() {
		respond new InternationalCertificate(params)
	}

	@Secured(["ROLE_ADMIN"])
	def adminindex() {
		def formdet = InternationalCertificate.findAll()
		respond formdet, model: [formdetCount: formdet.size()]
	}

	@Transactional
	def save(InternationalCertificate internationalCertificateInstance) {
		if (!internationalCertificateInstance) {
			notFound()
			return
		}
		if (internationalCertificateInstance.hasErrors()) {
			respond internationalCertificateInstance.errors, view: 'create'
			return
		}
		internationalCertificateInstance.save flush: true
		flash.message = "Certificate request saved successfully!"
		redirect action: "show", id: internationalCertificateInstance.id
	}

	protected void notFound() {
		flash.message = "Record not found."
		redirect action: "index"
	}

	// -------------------- PAYMENT GATEWAY --------------------
	@Transactional
	def makePayment() {
		// Fetch certificate request if available
		InternationalCertificate cert = InternationalCertificate.findById(params.id)
	
		// Optional: If you want to skip DB check and redirect anyway, uncomment below
		// if (!cert) {
		//     flash.message = "Certificate not found, proceeding anyway."
		// }
	
		// Fixed amount for all certificates
		def totalamt = 10
	
		// Generate random transaction/reference number
		def Rno = RandomNoGenerator.numberGenerator()
	
		// Use certId if certificate exists, else "0" as dummy
		String certId = cert ? cert.id.toString() : "0"
	
		// User details (use cert if available, else dummy)
		def firstName = cert?.firstName ?: "Guest"
		def phoneNo = cert?.phoneNo ?: "9999999999"
		def email = cert?.email ?: "guest@example.com"
	
		// Prepare payment
		String paymentResponse = PaymentGetway.Payment(
			Rno.toString(),
			totalamt.toString(),
			"International Certificate Fee",
			firstName,
			phoneNo,
			email,
	
			// Local URLs (callback)
			"http://localhost:8060/cyclothon/InternationalCertificate/transactional",
			"http://localhost:8060/cyclothon/InternationalCertificate/transactional",
			certId
	
			// Production URLs (keep commented)
			// "https://conv.kvafsu.edu.in/conv/InternationalCertificate/transactional",
			// "https://conv.kvafsu.edu.in/conv/InternationalCertificate/transactional",
			// certId
		)
	
		// Redirect to payment gateway
		if (!paymentResponse || paymentResponse.charAt(0) == "0") {
			flash.message = "Payment gateway error. Please try again."
			redirect(action: "error")
		} else {
			// Test gateway
			redirect(url: "https://testpay.easebuzz.in/pay/" + paymentResponse.substring(1))
	
			// Production
			// redirect(url: "https://pay.easebuzz.in/pay/" + paymentResponse.substring(1))
		}
	}
	
	@Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])
	def transactional() {
		GrailsWebRequest webRequest = WebUtils.retrieveGrailsWebRequest()
		def datass = webRequest.getParameterMap()
	
		// Find certificate if exists
		InternationalCertificate cert = InternationalCertificate.findById(datass.get("udf1"))
	
		if (cert) {
			PaymentInfo paym = new PaymentInfo()
			paym.paymentId = datass.get("easepayid")
			paym.transactionId = datass.get("txnid")
			paym.userId = datass.get("udf1")
			paym.totalamount = datass.get("amount")
			paym.status = datass.get("status")
			paym.discription = datass.get("status") == "success" ? "Successfully done payment" : "Something went wrong"
			paym.name = datass.get("firstname")
			paym.transactionDate = datass.get("addedon")
			paym.phoneNo = datass.get("phone")
			paym.bankRefNo = datass.get("bank_ref_num")
			cert.setPaymentInfoId(paym.save())
	
			cert.setPaystatus(datass.get("status") == "success" ? "Paid" : "Failed")
			cert.save()
		} else {
			// Optional: log the transaction even if certificate not found
			println "Transaction received for unknown certificate: ${datass.get("udf1")}"
		}
	
		if (datass.get("status") == "success") {
			redirect action: "thankyou"
		} else {
			redirect action: "paymentfailed"
		}
	}
	
	// -------------------- ERROR / THANK YOU PAGES --------------------
def error() {
	render(view: "/internationalCertificate/error")
}

def thankyou() {
	render(view: "/internationalCertificate/thankyou")
}

def paymentfailed() {
	render(view: "/internationalCertificate/paymentfailed")
}

} // <- only one closing brace for the class

