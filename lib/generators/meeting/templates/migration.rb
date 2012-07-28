# CURRENT FILE :: lib/generators/meeting/templates/migration.rb

class CreateMeetings < ActiveRecord::Migration
  def self.up
    create_table :meetings do |t|
      t.string :title
      t.string :startTime
      t.string :endTime
      t.text :content
      t.string :logsurl
      t.string :murl
      t.string :channel
      t.datetime :meetingdate
      t.string :meetingyear
      t.string :meetingmonth
      t.timestamps
    end
  end

  def self.down
    drop_table :meetings
  end
end
