# CURRENT FILE :: lib/generators/meeting/meeting_generator.rb
# Requires
require 'rails/generators'
require 'rails/generators/migration'

class MeetingGenerator < Rails::Generators::Base
  include Rails::Generators::Migration
  def self.source_root
    @source_root ||= File.join(File.dirname(__FILE__), 'templates')
  end

  def self.next_migration_number(dirname)
    if ActiveRecord::Base.timestamped_migrations
      Time.new.utc.strftime("%Y%m%d%H%M%S")
    else
      "%.3d" % (current_migration_number(dirname) + 1)
    end
  end

  def create_migration_file
    migration_template 'migration.rb', 'db/migrate/meetings.rb'
  end

  def copy_assets 
   # Copy stylesheet
    copy_file '../../../../app/assets/stylesheets/meeting.css', 
    'app/assests/stylesheets/meeting.css' 
   # copy model
    copy_file '../../../../app/models/meeting/meeting.rb',
    'app/models/meeting/meeting.rb'

    copy_file '../../../../app/views/meeting/*', 
    'app/views/meeting/'
  end
end
