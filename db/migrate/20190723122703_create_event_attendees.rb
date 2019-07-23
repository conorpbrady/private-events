class CreateEventAttendees < ActiveRecord::Migration[5.2]
  def change
    create_table :event_attendees do |t|
      t.integer :attendee_id
      t.integer :event_id

      t.timestamps
    end
  end
end
