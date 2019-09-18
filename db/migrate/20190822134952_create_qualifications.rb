class CreateQualifications < ActiveRecord::Migration[5.1]
  def change
    create_table :qualifications do |t|
      t.integer :userid
      t.string :skillname
      t.integer :skillid

      t.timestamps
    end
  end
end
