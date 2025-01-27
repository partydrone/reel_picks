class CreateMovies < ActiveRecord::Migration[8.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.date :released_on
      t.string :trailer
      t.string :link
      t.integer :earnings

      t.timestamps
    end
  end
end
