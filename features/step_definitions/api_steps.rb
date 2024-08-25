require 'uri'

Given('I create a user with name {string} and job {string}') do |name, job|
  @user_name = 'APITesting'
  @response = HTTParty.post('https://petstore.swagger.io/v2/user', body: {
    username: @user_name,
    firstName: name,
    lastName: job
  }.to_json, headers: { 'Content-Type' => 'application/json' })
  expect(@response.code).to eq(200)
end

When('I retrieve the user') do
  @get_response = HTTParty.get("https://petstore.swagger.io/v2/user/#{@user_name}")
  expect(@get_response.code).to eq(200)
end

Then('the user name should be the same') do
  expect(@get_response.parsed_response['username']).to eq(@user_name)
  @get_response = HTTParty.delete("https://petstore.swagger.io/v2/user/#{@user_name}")
  expect(@get_response.code).to eq(200)
end

Given('Json Schema: {string}') do |json_schema_name|
  response_to_check = @get_response || @response
  parsed_body = JSON.parse(response_to_check.body)
  expect(parsed_body).to match_response_schema(json_schema_name)
end
