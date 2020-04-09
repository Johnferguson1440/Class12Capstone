# Login with Owner_Admin


require 'watir'  
browser = Watir::Browser.new 

# Open Pet Clinc page
browser.goto 'https://clinic.doveryai-no-proveryai.com/petclinic/'
sleep 5

# Open Pet Clinc API page to bypass security Pop-up
browser.goto 'http://Owner_admin:admin@clinic.doveryai-no-proveryai.com:9966/petclinic/swagger-ui.html'
sleep 5
# Open Page to add a Owner to verify login successful
browser.goto 'https://clinic.doveryai-no-proveryai.com/petclinic/owners/add'
browser.text_field(name: "firstName").set("zest: #{DateTime.now.strftime("%Q")}") 
browser.text_field(name: "lastName").set 'dd'
browser.text_field(name: "address").set 'dd'
browser.text_field(name: "city").set 'dd'
browser.text_field(name: "telephone").set '123'
browser.button(type: 'submit').click
sleep 5
browser.scroll.to :bottom

sleep 5
