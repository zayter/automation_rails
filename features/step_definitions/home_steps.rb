Given('User visits the home page') do
  @home_page = HomePageObject.new(@browser)
  @home_page.open
end

When('page loads') do
  @home_page.root_element.wait_until(&:present?)
end

Then ('title is {string}') do |title|
 expect(title).to eql(@home_page.title) 
end
