require 'rails_helper'

RSpec.describe "splashes/edit", type: :view do
  let(:splash) {
    Splash.create!()
  }

  before(:each) do
    assign(:splash, splash)
  end

  it "renders the edit splash form" do
    render

    assert_select "form[action=?][method=?]", splash_path(splash), "post" do
    end
  end
end
