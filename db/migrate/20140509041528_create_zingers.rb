class CreateZingers < ActiveRecord::Migration
  def change
    create_table :zingers do |t|
      t.string :text

      t.timestamps
    end
  end
end
