class CreateAnecdotes < ActiveRecord::Migration[8.0]
  def change
    create_table :anecdotes do |t|
      t.string :title
      t.text :content
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
