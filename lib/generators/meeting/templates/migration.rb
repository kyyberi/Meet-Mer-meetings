# CURRENT FILE :: lib/generators/meeting/templates/migration.rb
############################################################################# 
# Copyright (C) 2012  Jarkko Moilanen 
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
# Contact: jarkko@want3d.fi
#############################################################################

class Meetings < ActiveRecord::Migration
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
