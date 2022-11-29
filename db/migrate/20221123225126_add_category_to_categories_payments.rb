class AddCategoryToCategoriesPayments < ActiveRecord::Migration[7.0]
  def change
    add_reference :categories_payments, :category, null: false, foreign_key: true
  end
end
