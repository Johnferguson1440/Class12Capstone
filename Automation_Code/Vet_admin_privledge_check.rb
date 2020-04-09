# Login with VET_Admin


require 'watir'  

 

    
browser = Watir::Browser.new 
# Open Pet Clinc page
browser.goto 'https://clinic.doveryai-no-proveryai.com/petclinic/'
sleep 5

# Open Pet Clinc API page to bypass security Pop-up
browser.goto 'http://Vet_admin:admin@clinic.doveryai-no-proveryai.com:9966/petclinic/swagger-ui.html'
sleep 5
# Open Pet Owner Page and try to add Owner
browser.goto 'https://clinic.doveryai-no-proveryai.com/petclinic/owners/add'
sleep 5
browser.text_field(name: "firstName").set("zest: #{DateTime.now.strftime("%Q")}") 
browser.text_field(name: "lastName").set 'dd'
browser.text_field(name: "address").set 'dd'
browser.text_field(name: "city").set 'dd'
browser.text_field(name: "telephone").set '123'
browser.button(type: 'submit').click
sleep 5