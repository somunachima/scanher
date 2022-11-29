class AddPriceToClinics < ActiveRecord::Migration[7.0]
  def change
    add_column :clinics, :price, :float
  end
end
