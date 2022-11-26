require 'rails_helper'
# rubocop:disable all

module TempTask
  ...
end

# rubocop:enable all

RSpec.describe 'splashes/edit', type: :view do
  let(:splash) do
    Splash.create!
  end

  before(:each) do
    assign(:splash, splash)
  end

  it 'renders the edit splash form' do
    render

    assert_select 'form[action=?][method=?]', splash_path(splash), 'post' do
    end
  end
end
