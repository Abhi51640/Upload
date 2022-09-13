class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      
      t.integer :user_id
      t.boolean :is_public
      t.boolean :is_private
      t.string :description
      
      t.timestamps
    end
  end
end
