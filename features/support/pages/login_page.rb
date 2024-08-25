# elements page
class LoginPage < BasePage
  def fill_username(username)
    fill_in 'username', with: username
  end

  def fill_password(password)
    fill_in 'password', with: password
  end

  def submit
    click_button 'Log In'
  end
end
