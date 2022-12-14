class ApptManagmentPageObject
  include PageObject

  div(:list, xpath: "//div[@class='one-half column'][2]")

  indexed_property(:appt_list, [
    [:button, :delete, {:xpath => "//button[@data-testid='btn-delete']"}]
  ])

end
