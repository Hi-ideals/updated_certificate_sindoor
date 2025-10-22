package com.hiideals.form

import com.springapp.Images;

class InternationalCertificate {
	String firstName
	String lastName
	String phoneNo
	String state
	String district
	String city
	String email
	Images profilePic
	
	
	static constraints = {
		
		firstName nullable:true
		lastName nullable:true
		phoneNo nullable:true
		state nullable:true
		district nullable:true
		city nullable:true
		email nullable:true
		profilePic nullable:true
		
	}
    
}
