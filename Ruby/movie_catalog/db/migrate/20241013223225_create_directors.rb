class CreateDirectors < ActiveRecord::Migration[7.2]
  def change
    create_table :directors do |t|
      t.string :name
      t.string :nationality
      t.date :birthdate
      t.references :favorite_genre, null: false, foreign_key: { to_table: :genres }

      t.timestamps
    end
  end
end




