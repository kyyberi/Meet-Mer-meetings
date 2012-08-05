# CURRENT FILE :: lib/generators/meeting/meeting_generator.rb
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

# Requires
require 'rails/generators'
require 'rails/generators/migration'
class MeetingGenerator < Rails::Generators::Base
  include Rails::Generators::Migration
#  source_root File.expand_path('../templates', __FILE__)
  def self.source_root
   # @source_root ||= File.join(File.dirname(__FILE__), 'templates')
	@source_root ||= File.expand_path("../templates", __FILE__)

  end

  def self.next_migration_number(dirname)
    if ActiveRecord::Base.timestamped_migrations
      Time.new.utc.strftime("%Y%m%d%H%M%S")
    else
      "%.3d" % (current_migration_number(dirname) + 1)
    end
  end

  def create_model_file
    template "meeting.rb", "app/models/meeting.rb"
    migration_template "migration.rb", "db/migrate/meetings.rb"
  end

#    def create_migration_file
#      migration_template 'migration.rb', 'db/migrate/meetings.rb'
#    end

#    def copy_assets 
     # Copy stylesheet
#      copy_file '../../../../app/assets/stylesheets/meeting.css', 
#      'app/assests/stylesheets/meeting.css' 
     # copy model
#      copy_file '../../../../app/models/meeting/meeting.rb',
#      'app/models/meeting/meeting.rb'
     # copy view files
#      copy_file '../../../../app/views/meeting/index.html.haml', 
#      'app/views/meeting/index.html.haml'
#      copy_file '../../../../app/views/meeting/_accordion.html.haml',
#      'app/views/meeting/_accordion.html.haml'
#      copy_file '../../../../app/views/meeting/show.html.haml',
#      'app/views/meeting/show.html.haml'
#      copy_file '../../../../app/views/meeting/_form.html.haml',
#      'app/views/meeting/_form.html.haml'
#      copy_file '../../../../app/views/meeting/edit.html.haml',
#      'app/views/meeting/edit.html.haml'
   # copy controller
#      copy_file '../../../../app/controllers/meeting_controller.rb',
#      'app/controllers/meeting_controller.rb'
     # copy routes file. Keep in mind that in main app all route files in folder config/routes are 
     # concatenated to one. Copy this routes.rb as meeting_routes.rb
#      copy_file '../../../../config/routes.rb',
#      'config/routes/meeting_routes.rb'
#    end
#    def source_base_path
#        '../../../../'  
#    end
#      
#    def destination_assets_base_path
#          'app/assets/'
#    end

end
