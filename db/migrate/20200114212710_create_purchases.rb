class CreatePurchases < ActiveRecord::Migration[5.2]
  def change
    create_table :purchases do |t|
      t.column(:date, :datetime)

      t.timestamps()
    end
  end
end
