# Login with VET_Admin Privledge check


require 'watir-webdriver'  



    
browser = Watir::Browser.new 
# Open Pet Clinc page
browser.goto 'https://clinic.doveryai-no-proveryai.com/petclinic/'


# Open Pet Clinc API page to bypass security Pop-up
browser.goto 'http://Owner_admin:admin@clinic.doveryai-no-proveryai.com:9966/petclinic/swagger-ui.html'

# Open Pet Vet Page and try to add Vet
browser.goto 'https://clinic.doveryai-no-proveryai.com/petclinic/vets/add'
browser.text_field(name: "firstName").set 'dd' 
browser.text_field(name: "lastName").set 'dd'
browser.select(id: 'specialties').length




if browser.select(id: 'specialties').length == 0
puts 'Test Passed'
else
puts 'Test Failed'
end..