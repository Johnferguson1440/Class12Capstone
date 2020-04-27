# Login with VET_Admin

require 'watir-webdriver'
browser = Watir::Browser.new 
t=Time.now.strftime("%d/%m/%Y %H:%M")
zestT="zest#{t}"
host_name = 'http://admin:admin@clinic.doveryai-no-proveryai.com:9966/petclinic/api/vets'

# Open Pet Clinc page
browser.goto 'https://clinic.doveryai-no-proveryai.com/petclinic/'

# Open Pet Clinc API page to bypass security Pop-up
browser.goto 'http://Vet_admin:admin@clinic.doveryai-no-proveryai.com:9966/petclinic/swagger-ui.html'
sleep 5
# Open Page to add a Vet to verify login successful
browser.goto 'https://clinic.doveryai-no-proveryai.com/petclinic/vets/add'
browser.text_field(name: "firstName").set(zestT) 
browser.text_field(name: "lastName").set 'dd'
browser.select(id: 'specialties').click 
browser.option(text: 'ENT').click
browser.button(type: 'submit').click


Kernel.system "curl -X GET #{host_name}"  

if browser.text.include? zestT
puts "Test pass"
else
puts "Test Fail"

end


