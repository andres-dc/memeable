class CreateMemes < ActiveRecord::Migration[6.0]
  def change
    create_table :memes do |t|
      t.string :title
      t.string :type
      t.string :url_source
      t.integer :votes_count
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
