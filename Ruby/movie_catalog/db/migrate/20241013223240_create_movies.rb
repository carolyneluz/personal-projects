class CreateMovies < ActiveRecord::Migration[7.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :release_year
      t.text :synopsis
      t.string :country
      t.integer :duration
      t.references :director, null: false, foreign_key: true
      t.references :genre, null: false, foreign_key: true
      t.string :status
      t.boolean :draft
      t.string :poster

      t.timestamps
    end
  end
end
