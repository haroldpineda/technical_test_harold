# visit url webpage
class BasePage
  include Capybara::DSL

  def visit_page(url = '')
    visit(url)
  end
end
