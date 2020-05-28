class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.datetime :date
      t.string :location
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
