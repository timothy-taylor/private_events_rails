class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.date :date
      t.text :description

      t.timestamps
    end
  end
end
