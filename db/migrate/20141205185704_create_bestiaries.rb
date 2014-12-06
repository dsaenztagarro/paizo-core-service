# Migration for creating bestiaries table
class CreateBestiaries < ActiveRecord::Migration
  def change
    create_table :bestiaries do |t|
      t.string :name
    end
  end
end
