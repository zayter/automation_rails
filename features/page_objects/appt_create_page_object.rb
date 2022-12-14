class ApptCreatePageObject
  include PageObject

  form(:form, xpath: "//form")
  text_field(:pet_name, xpath: "//input[@data-testid='pet']")
  text_field(:owner_name, xpath: "//input[@data-testid='owner']")
  text_field(:date, xpath: "//input[@data-testid='date']")
  text_field(:time, xpath: "//input[@data-testid='time']")
  text_area(:symptoms, xpath: "//textarea[@data-testid='symptoms']")
  button(:submit_button, xpath: "//button[@data-testid='btn-submit']")

  def fill_form(appt)
    self.pet_name = appt['pet_name']
    self.owner_name = appt['owner_name']
    self.date = appt['date']
    self.time = appt['time']
    self.symptoms = appt['symptoms']
  end
end
