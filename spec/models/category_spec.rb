require 'rails_helper'

RSpec.describe Category, type: :model do
  subject do
    User.create(name: 'NTIHINDUKA ALPHA', email: 'ntihindukaalpha@yahoo.com', password: '1234567890', password_confirmation: '1234567890')
  end
  before do
    @category = Category.create(name: 'category 1', icon: 'https://static.vecteezy.com/system/resources/previews/005/129/872/original/category-black-filled-icon-style-free-vector.jpg', user: subject)
  end

  context 'Validations should be working' do
    it 'ALL validations should be valid' do
      expect(subject).to be_valid
    end

    it 'Name inventory validation should return true' do
      expect(@category.name).to eql('category 1')
    end

    it 'Name inventory validation should return true' do
      expect(@category.icon).to eql('https://static.vecteezy.com/system/resources/previews/005/129/872/original/category-black-filled-icon-style-free-vector.jpg')
    end

    it 'Name user validation should return true' do
      expect(subject.name).to eql('NTIHINDUKA ALPHA')
    end

    it 'Name user validation should return true' do
      expect(subject.email).to eql('ntihindukaalpha@yahoo.com')
    end

    it 'Inventory user validation should return true' do
      expect(@category.user).to eql(subject)
    end
  end
end
