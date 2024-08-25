# elements page
class DashboardPage < BasePage
  def credit_available
    find('#creditAvailable .balance-value').text.gsub(/[$,]/, '').to_f
  end

  def negative_values_in_red?
    all('#transactionsTable .text-danger').all? { |el| el.text.include?('-') }
  end

  def positive_values_in_green?
    all('#transactionsTable .text-success').all? { |el| el.text.include?('+') }
  end

  def total_balance
    find('#totalBalance .balance-value').first('span').text.gsub(/[$,]/, '').to_f
  end

  def transactions_count
    find('#transactionsTable tbody').all('tr').count
  end

  def january_transactions
    find('#transactionsTable tbody').all('td').count { |td| td.text.include?('Jan') }
  end

  def pending_transactions
    find('#transactionsTable tbody').all('td.nowrap').count { |td| td.text.include?('Pending') }
  end

  def time_format_validate?
    find('#transactionsTable tbody').all('span.smaller.lighter').all? do |element|
      time_text = element.text.strip
      time_text.match?(/^([1-9]|1[0-2]):[0-5][0-9][ap]m$/i)
    end
  end
end
