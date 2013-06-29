class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :event_title
      t.text :description
      t.text :address
      t.date :event_date
      t.date :last_date
      t.float :amount

      t.timestamps
    end
  end
end
