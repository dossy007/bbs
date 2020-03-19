class CreateBoards < ActiveRecord::Migration[5.2]
  def change
    create_table :boards do |t|
      t.string :title,null: false
      t.string :image
      t.timestamps
    end
  end
end
