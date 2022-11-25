require 'rails_helper'

RSpec.describe Payment, type: :model do
  before(:each) do
    @user = User.create(name: 'NTIHINDUKA ALPHA', email: 'ntihindukaalpha@yahoo.com', password: '1234567890', password_confirmation: '1234567890')
    @category = Category.create(name: 'category 1', icon: 'https://static.vecteezy.com/system/resources/previews/005/129/872/original/category-black-filled-icon-style-free-vector.jpg', user_id: @user.id)
    @payment = Payment.create(name: 'payment 1', amount: 22.4, user_id: @user.id)
  end

  it 'Inventoryfood should have valid attributes' do
    expect(@payment.name).to eq('payment 1')
  end

  it 'Inventoryfood should have valid attributes' do
    expect(@payment.amount).to eq(22.4)
  end

  it 'user for inventory food should be valid' do
    expect(@payment).to be_valid
  end

  it 'user for inventory food should be valid' do
    expect(@user).to be_valid
  end
end
