class CreateEventLists < ActiveRecord::Migration
  def change
    create_table :event_lists do |t|
      t.string :title
      t.string :date

      t.timestamps
    end
  end
end
