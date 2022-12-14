class HomePageObject
  include PageObject

  div(:root, id: 'root')
  h1(:title, xpath: "//h1[@data-testid='app-name']")

  def open
    @browser.goto 'http://localhost:3000/'
  end
end
