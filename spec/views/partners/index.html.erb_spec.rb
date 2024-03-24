require 'rails_helper'

RSpec.describe "partners/index", type: :view do
  before(:each) do
    assign(:partners, [
      Partner.create!(
        title: "Title",
        user: nil
      ),
      Partner.create!(
        title: "Title",
        user: nil
      )
    ])
  end

  it "renders a list of partners" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Title".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
