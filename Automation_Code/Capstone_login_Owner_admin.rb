# Login with Owner_Admin


  

require 'watir-webdriver'
browser = Watir::Browser.new 
t=Time.now.strftime("%d/%m/%Y %H:%M")
zestT="zest#{t}"
host_name = 'http://admin:admin@clinic.doveryai-no-proveryai.com:9966/petclinic/api/owners' 

# Open Pet Clinc page
browser.goto 'https://clinic.doveryai-no-proveryai.com/petclinic/'


# Open Pet Clinc API page to bypass security Pop-up
browser.goto 'http://Owner_admin:admin@clinic.doveryai-no-proveryai.com:9966/petclinic/swagger-ui.html'

# Open Page to add a Owner to verify login successful
browser.goto 'https://clinic.doveryai-no-proveryai.com/petclinic/owners/add'
browser.text_field(name: "firstName").set 'zest'  
browser.text_field(name: "lastName").set 'dd'
browser.text_field(name: "address").set(zestT)
browser.text_field(name: "city").set 'dd'
browser.text_field(name: "telephone").set '123'
browser.button(type: 'submit').click


 
Kernel.system "curl -X GET #{host_name}" 

if browser.text.include? "zestT"
puts "Test pass"
else
puts "Test Fail"

end
