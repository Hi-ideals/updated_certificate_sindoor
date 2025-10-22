class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?(.$format)?" { constraints  { // apply constraints here
			} }

		"/"(controller:"mainPage")
		"500"(view:'/error')


		"/Super@dm!n"(controller:'superadmin', action:'index')
		"500"(view:'/error')

		"/Dashboard"(controller:'superadmin', action:'indexx')
		"500"(view:'/error')

		"/register"(controller:'register', action:'index')
		"500"(view:'/error')

		"/Usercreates"(controller:'usercreate', action:'index')
		"500"(view:'/error')

		"/CommanUsers"(controller:'commanUsers', action:'index')
		"500"(view:'/error')

		"/Commansignup"(controller:'register', action:'signup')
		"500"(view:'/error')
		
		"/CommanUserscreates"(controller:'superadmin', action:'dashboard')
		"500"(view:'/error')

		"/thankyou"(controller:'certificate', action:'thankyou')
		"500"(view:'/error')
		
		"/Usercreatesindex"(controller:'usercreate', action:'index')
		"500"(view:'/error')


		"/Certificate"(controller:'internationalCertificate', action:'index')
		"500"(view:'/error')

		"/Certificatecreate"(controller:'internationalCertificate', action:'create')
		"500"(view:'/error')

		"/Certificateedit"(controller:'internationalCertificate', action:'edit')
		"500"(view:'/error')

		"/Certificateshow"(controller:'internationalCertificate', action:'show')
		"500"(view:'/error')

		"/Certificatereport"(controller:'internationalCertificate', action:'report')
		"500"(view:'/error')


		"/Certificateadminindex"(controller:'internationalCertificate', action:'adminindex')
		"500"(view:'/error')
		
		"/Certificatedownloadfile"(controller:'internationalCertificate', action:'downloadfile')
		"500"(view:'/error')


		"/userlist"(controller:'formDetail', action:'userlist')
		"500"(view:'/error')


		"/createEducations"(controller:'formDetail', action:'createEducations')
		"500"(view:'/error')

		"/createAddmore"(controller:'formDetail', action:'createAddmore')
		"500"(view:'/error')

		"/createdocumentss"(controller:'formDetail', action:'createdocumentss')
		"500"(view:'/error')



		"/unusedOPT"(controller:'formDetail', action:'unusedOPT')
		"500"(view:'/error')
	}
}
