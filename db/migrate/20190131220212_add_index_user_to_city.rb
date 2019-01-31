class AddIndexUserToCity < ActiveRecord::Migration[5.2]
  def change
  	add_reference :Users, :city, foreign_key: true
  end
end