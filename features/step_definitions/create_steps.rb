require 'pry'
When('form loads') do
  @current_page = ApptCreatePageObject.new(@browser)
  @current_page.form.wait_until(&:present?)
end  

When('User fills out the following fields') do |table|
  appt = table.hashes.first
  @pet_name = appt["pet_name"]
  @current_page.fill_form(appt) 
end  

When('User submits the form') do
  @current_page.submit_button
  @current_page = ApptManagmentPageObject.new(@browser)
  @current_page.list_element.wait_until(&:present?)
end    

Then('A new appt is created') do
 expect(@current_page.list_element.div_elements.length()).to eql(1)
 expect(@current_page.appt_list[0].text).to include(@pet_name)
end    
