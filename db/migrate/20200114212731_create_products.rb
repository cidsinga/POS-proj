class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.column(:cost, :integer)
      t.column(:name, :string)
      t.column(:purchase_id, :integer)
      t.column(:availability, :boolean, default: true)
    end
  end
end
