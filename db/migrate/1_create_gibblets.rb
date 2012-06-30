class CreateGibblets < ActiveRecord::Migration
  def change
    create_table :gibblets do |t|
      t.string  "name"
      t.text    "extras"
      t.text    "stuff"
    end
  end
end
