require_relative '../../lib/challenges'

Given('the number {int}') do |number|
  @number = number
end

When('I check if the number is prime') do
  @is_prime = Challenges.es_primo?(@number)
end

Then('the result should be {string}') do |expected_result|
  expect(@is_prime.to_s).to eq(expected_result)
end

Given('the string {string}') do |string|
  @string = string
end

When('I sort the string alphabetically') do
  @sorted_string = Challenges.ordenar_cadena(@string)
end

Then('the sorted string should be {string}') do |expected_string|
  expect(@sorted_string).to eq(expected_string)
end

When('I check if the string is a palindrome') do
  @is_palindrome = Challenges.es_palindromo?(@string)
end

Then('the palindrome result should be {string}') do |expected_result|
  expect(@is_palindrome.to_s).to eq(expected_result)
end

Given('the number of Fibonacci terms {int}') do |n|
  @fibonacci_terms = n
end

When('I generate the Fibonacci sequence') do
  @fibonacci_sequence = Challenges.fibonacci(@fibonacci_terms)
end

Then('the Fibonacci sequence should be {string}') do |expected_sequence|
  expect(@fibonacci_sequence.join(', ')).to eq(expected_sequence)
end

Given('the list {string} and the target {int}') do |list, target|
  @list = list.split(',').map(&:to_i)
  @target = target
end

When('I find the two numbers that sum to the target') do
  @result_pair = Challenges.suma_dos_numeros(@list, @target)
end

Then('the result pair should be {string}') do |expected_pair|
  if @result_pair
    expect(@result_pair.sort.join(', ')).to eq(expected_pair)
  else
    expect('nil').to eq(expected_pair)
  end
end
