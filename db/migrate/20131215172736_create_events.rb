class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.datetime :event_date
      t.string :description
      t.string :gift_ideas

      t.timestamps
    end
  end
end
