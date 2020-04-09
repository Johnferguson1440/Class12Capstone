# Login with VET_Admin Privledge check


require 'watir'  

 

    
browser = Watir::Browser.new 
# Open Pet Clinc page
browser.goto 'https://clinic.doveryai-no-proveryai.com/petclinic/'
sleep 5

# Open Pet Clinc API page to bypass security Pop-up
browser.goto 'http://Owner_admin:admin@clinic.doveryai-no-proveryai.com:9966/petclinic/swagger-ui.html'
sleep 5
# Open Pet Vet Page and try to add Vet
browser.goto 'https://clinic.doveryai-no-proveryai.com/petclinic/vets/add'
sleep 5
browser.text_field(name: "firstName").set("zest: #{DateTime.now.strftime("%Q")}") 
browser.text_field(name: "lastName").set 'dd'
browser.select(id: 'specialties').click 
browser.option(text: 'ENT').click
browser.button(type: 'submit').click
sleep 5
