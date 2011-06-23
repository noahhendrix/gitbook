class CreateRepositories < ActiveRecord::Migration
  def change
    create_table :repositories do |t|
      t.integer :user_id
      t.string :name
      t.text :description
      t.string :url

      t.timestamps
    end
    
    add_index :repositories, :name
  end
end