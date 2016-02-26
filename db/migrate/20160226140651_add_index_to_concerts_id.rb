class AddIndexToConcertsId < ActiveRecord::Migration
  def change
    add_index :comments, :concert_id
  end
end
