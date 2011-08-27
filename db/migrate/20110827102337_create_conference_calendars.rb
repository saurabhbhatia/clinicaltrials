class CreateConferenceCalendars < ActiveRecord::Migration
  def self.up
    create_table :conference_calendars do |t|
      t.string :event_name
      t.text :event_description
      t.date :event_date
      t.text :who_should_attend

      t.timestamps
    end
  end

  def self.down
    drop_table :conference_calendars
  end
end
