class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.string :do
      t.text :description

      t.timestamps
    end
  end
end
