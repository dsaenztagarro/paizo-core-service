# Migration for representing the monsters table
class CreateMonsters < ActiveRecord::Migration
  def change
    create_table :monsters do |t|
      t.string :title
      t.integer :charisma
      t.integer :constitution
      t.integer :dexterity
      t.integer :intelligence
      t.integer :strength
      t.integer :wisdom
      t.references :bestiary
    end
  end
end
