Given('As a user I enter the website metrocuadrado.com') do
  @home_page = Pages::Home::Homepage.new
  @home_page.go_home_page
end
