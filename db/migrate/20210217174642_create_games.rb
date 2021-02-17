class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.integer :total_points
      t.string :difficulty
      t.string :category
      t.integer :user_id
    end
  end
end
