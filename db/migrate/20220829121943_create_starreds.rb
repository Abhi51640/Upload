class CreateStarreds < ActiveRecord::Migration[7.0]
  def change
    create_table :starrerds do |t|

      t.timestamps
    end
  end
end
