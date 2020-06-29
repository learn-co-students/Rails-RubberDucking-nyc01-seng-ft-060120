class CreateDucks < ActiveRecord::Migration[5.2]
  def change
    create_table :ducks do |t|
      t.belongs_to :student, foreign_key: true
      t.string :name
      t.string :description


      t.timestamps
    end
  end
end
