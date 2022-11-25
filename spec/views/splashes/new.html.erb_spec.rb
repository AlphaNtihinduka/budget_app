require 'rails_helper'

RSpec.describe 'splashes/new', type: :view do
  before(:each) do
    assign(:splash, Splash.new)
  end

  it 'renders new splash form' do
    render

    assert_select 'form[action=?][method=?]', splashes_path, 'post' do
    end
  end
end
