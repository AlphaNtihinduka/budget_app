class CreateCategoriesPayment < ActiveRecord::Migration[7.0]
  def change
    create_table :categories_payments do |t|

      t.timestamps
    end
  end
end
