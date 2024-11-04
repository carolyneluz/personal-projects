class CreateRestaurantOwners < ActiveRecord::Migration[7.2]
  def change
    create_table :restaurant_owners do |t|
      t.string :cpf
      t.string :name
      t.string :surname
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
