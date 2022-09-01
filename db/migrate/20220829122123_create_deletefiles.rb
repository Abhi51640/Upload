class CreateDeletefiles < ActiveRecord::Migration[7.0]
  def change
    create_table :deletefiles do |t|

      t.timestamps
    end
  end
end
