class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name, null: false, default: '', comment: 'Product name'

      t.timestamps
    end
  end
end
