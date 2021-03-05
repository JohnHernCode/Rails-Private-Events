class Change < ActiveRecord::Migration[6.1]
  def change
    add_reference :events, :creator, foreign_key: { to_table: :users }
  end
end
