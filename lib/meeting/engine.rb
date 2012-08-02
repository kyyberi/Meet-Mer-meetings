# CURRENT FILE :: lib/meeting/engine.rb
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

module Meeting

  class Engine < Rails::Engine

    initializer "meeting.load_app_instance_data" do |app|
      Meeting.setup do |config|
        config.app_root = app.root
      end
    end

    initializer "meeting.load_static_assets" do |app|
      app.middleware.use ::ActionDispatch::Static, "#{root}/public"
    end

  end

end
