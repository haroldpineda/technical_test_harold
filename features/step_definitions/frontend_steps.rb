Given('I am on the login page') do
  @login_page = LoginPage.new
  @login_page.visit_page('/hackathonV2.html')
end

When('I log in with valid credentials') do
  @login_page.fill_username('testuser')
  @login_page.fill_password('testpassword')
  @login_page.submit
end

Then('I should be redirected to the dashboard') do
  expect(page).to have_current_path('/hackathonAppV2.html')
end

And('I should see exactly {int} transactions in the table') do |count|
  @dashboard_page = DashboardPage.new
  expect(@dashboard_page.transactions_count).to eq(count)
end

And('I should see a total balance of {float}') do |balance|
  expect(@dashboard_page.total_balance).to eq(balance)
end

And('I should see a credit available of {float}') do |credit|
  expect(@dashboard_page.credit_available).to eq(credit)
end

And('positive values should be in green') do
  expect(@dashboard_page.positive_values_in_green?).to be true
end

And('negative values should be in red') do
  expect(@dashboard_page.negative_values_in_red?).to be true
end

And('I should see exactly {int} values containing January in the date') do |count|
  expect(@dashboard_page.january_transactions).to eq(count)
end

And('I should see exactly {int} values containing Pending in the transactions') do |count|
  expect(@dashboard_page.pending_transactions).to eq(count)
end

And('Validate the time format of the transactions') do
  expect(@dashboard_page.time_format_validate?).to be false
end
