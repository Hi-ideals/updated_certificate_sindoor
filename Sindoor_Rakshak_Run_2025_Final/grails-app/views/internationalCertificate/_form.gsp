<%@ page import="com.hiideals.form.InternationalCertificate" %>


  <div class="row m-4">
  
  
   <div class="form-group  col-md-4">
            <label style="font-size: 20px;" for="lastName">Title</label><br/>
              <select class="form-select"  name="lastName" value="${internationalCertificateInstance?.lastName}" style="border:1px solid black;" aria-label="Default select example">
  <option selected>Select</option>
  <option value="Dr.">Dr.</option>
  <option value="Shri.">Shri.</option>
   <option value="Smt.">Smt.</option>
   <option value="Kum.">Kum.</option>
</select>
     </div>
     
        <div class="form-group col-md-4 fieldcontain ${hasErrors(bean: internationalCertificateInstance, field: 'firstName', 'error')} ">
          <label style="font-size: 20px;" for="firstName">Full Name (used in certificate)</label>
          <input type="text" class="form-control" maxlength="30" name="firstName" value="${certificateInstance?.firstName}"  style="border:1px solid black;" oninput="this.value = this.value.toUpperCase()"  id="firstName" placeholder="Full name" required >
        </div>
        <div class="form-group  col-md-4">
          <label style="font-size: 20px;" for="phoneNo" style="font-size: 20px;">Phone Number</label>
          <input type="text" class="form-control"    name="phoneNo" value="${internationalCertificateInstance?.phoneNo}" style="border:1px solid black;" id="numberInput" oninput="validateInput()" maxlength="10" placeholder="Phone Number"  required>
        </div>
       
     
       
   <div class="form-group col-md-4">
            <label style="font-size: 20px;" for="lastName">Email Address</label>
            <input type="email" class="form-control" name="email" value="${internationalCertificateInstance?.email}" style="border:1px solid black;" id="email" placeholder="Email" >
          </div>
    <!--              
 <div class="form-group  col-md-4">
            <label style="font-size: 20px;" for="state">State</label><br/>
             
<select class="form-select" name="state" value="${internationalCertificateInstance?.state}" style="border:1px solid black;" id="inputState" onchange="updateDistricts()" required>
        <option value="SelectState">Select State</option>
        <option value="Andra Pradesh">Andra Pradesh</option>
        <option value="Arunachal Pradesh">Arunachal Pradesh</option>
        <option value="Assam">Assam</option>
        <option value="Bihar">Bihar</option>
        <option value="Chhattisgarh">Chhattisgarh</option>
        <option value="Goa">Goa</option>
        <option value="Gujarat">Gujarat</option>
        <option value="Haryana">Haryana</option>
        <option value="HimachalPradesh">Himachal Pradesh</option>
        <option value="JammuKashmir">Jammu and Kashmir</option>
        <option value="Jharkhand">Jharkhand</option>
        <option value="Karnataka">Karnataka</option>
        <option value="Kerala">Kerala</option>
        <option value="MadhyaPradesh">Madhya Pradesh</option>
        <option value="Maharashtra">Maharashtra</option>
        <option value="Manipur">Manipur</option>
        <option value="Meghalaya">Meghalaya</option>
        <option value="Mizoram">Mizoram</option>
        <option value="Nagaland">Nagaland</option>
        <option value="Odisha">Odisha</option>
        <option value="Punjab">Punjab</option>
        <option value="Rajasthan">Rajasthan</option>
        <option value="Sikkim">Sikkim</option>
        <option value="TamilNadu">Tamil Nadu</option>
        <option value="Telangana">Telangana</option>
        <option value="Tripura">Tripura</option>
        <option value="Uttarakhand">Uttaranchal</option>
        <option value="UttarPradesh">Uttar Pradesh</option>
        <option value="WestBengal">West Bengal</option>
        <option value="AndamanNicobar">Andaman and Nicobar Islands</option>
        <option value="Chandigarh">Chandigarh</option>
        <option value="DadraHaveli">Dadar and Nagar Haveli</option>
        <option value="DamanDiu">Daman and Diu</option>
        <option value="Delhi">Delhi</option>
        <option value="Lakshadweep">Lakshadweep</option>
        <option value="Puducherry">Pondicherry</option>
    </select>
     </div>
  
       
     <div class="form-group  col-md-4">
            <label style="font-size: 20px;" for="district">District</label><br/>
              <select class="form-select"  name="district" id="inputDistrict" value="${internationalCertificateInstance?.district}" style="border:1px solid black;" aria-label="Default select example" required>
</select>
     </div>  
      --> 
      
      <div class="form-group col-md-4 fieldcontain ${hasErrors(bean: internationalCertificateInstance, field: 'city', 'error')} ">
          <label style="font-size: 20px;" for="city">Distance</label>
          <input type="text" class="form-control" maxlength="30" name="city" value="${certificateInstance?.city}"  style="border:1px solid black;" oninput="this.value = this.value.toUpperCase()"  id="city" placeholder="Distance"  >
        </div>
       
       
      </div>