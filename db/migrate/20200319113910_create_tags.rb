class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
      t.references :board,foreign_key: true
      t.references :category,foreign_key: true
      t.timestamps
    end
  end
end