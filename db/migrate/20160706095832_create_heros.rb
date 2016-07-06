class CreateHeros < ActiveRecord::Migration[5.0]
  def change
    create_table :heros do |t|
      t.string :first_name
      t.string :last_name
      t.string :fka
      t.string :powers
      t.string :weakness
      t.string :universe

      t.timestamps
    end
  end
end
