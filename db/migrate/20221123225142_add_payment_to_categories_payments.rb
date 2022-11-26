class AddPaymentToCategoriesPayments < ActiveRecord::Migration[7.0]
  def change
    add_reference :categories_payments, :payment, null: false, foreign_key: true
  end
end
