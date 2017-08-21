class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.column :status, :string

      t.timestamps
    end
  end
end
