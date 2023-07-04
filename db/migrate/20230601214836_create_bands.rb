class CreateBands < ActiveRecord::Migration[6.1]
  def change
    create_table :bands do |t|
      t.integer :user_id
      t.string :name
      t.string :image
      t.timestamps
    end
  end
end
