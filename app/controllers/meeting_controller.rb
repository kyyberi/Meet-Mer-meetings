# CURRENT FILE :: app/controllers/meeting/meeting_controller.rb
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

class MeetingsController < ::ApplicationController
  # GET /meetings
  # GET /meetings.json

  def index
  #    @meetings = Meeting.all

    Rails.logger.info("MEETMER: meetings_controller.rb")    
    @meetings = Meeting.find(:all, :order => 'meetingdate DESC', :limit => 10) 
    @meetingsall = Meeting.find(:all, :order => 'meetingdate DESC', :conditions => {:meetingyear => Time.now.year})
    @meetingstotal = Meeting.find(:all)
    @cyear = Time.now.year
    @meetings1 = Meeting.find(:all, :conditions => {:meetingmonth => "1", :meetingyear => Time.now.year})
    @meetings2 = Meeting.find(:all, :conditions => {:meetingmonth => "2", :meetingyear => Time.now.year})
    @meetings3 = Meeting.find(:all, :conditions => {:meetingmonth => "3", :meetingyear => Time.now.year})
    @meetings4 = Meeting.find(:all, :conditions => {:meetingmonth => "4", :meetingyear => Time.now.year})
    @meetings5 = Meeting.find(:all, :conditions => {:meetingmonth => "5", :meetingyear => Time.now.year})
    @meetings6 = Meeting.find(:all, :conditions => {:meetingmonth => "6", :meetingyear => Time.now.year})
    @meetings7 = Meeting.find(:all, :conditions => {:meetingmonth => "7", :meetingyear => Time.now.year})
    @meetings8 = Meeting.find(:all, :conditions => {:meetingmonth => "8", :meetingyear => Time.now.year})
    @meetings9 = Meeting.find(:all, :conditions => {:meetingmonth => "9", :meetingyear => Time.now.year})
    @meetings10 = Meeting.find(:all, :conditions => {:meetingmonth => "10", :meetingyear => Time.now.year})
    @meetings11 = Meeting.find(:all, :conditions => {:meetingmonth => "11", :meetingyear => Time.now.year})
    @meetings12 = Meeting.find(:all, :conditions => {:meetingmonth => "12", :meetingyear => Time.now.year})

    respond_to do |format|

      format.html # index.html.erb
      format.json { render json: @meetings }
    end
  end

  # GET /meetings/1
  # GET /meetings/1.json
  def show
    @meetings = Meeting.find(:all, :order => 'meetingdate DESC', :limit => 10)
    @meetingsall = Meeting.find(:all, :order => 'meetingdate DESC')
    @meeting = Meeting.find(params[:id])
    @meetingstotal = Meeting.find(:all)
   
    @meetings1 = Meeting.find(:all, :conditions => {:meetingmonth => "1", :meetingyear => Time.now.year})
    @meetings2 = Meeting.find(:all, :conditions => {:meetingmonth => "2", :meetingyear => Time.now.year})
    @meetings3 = Meeting.find(:all, :conditions => {:meetingmonth => "3", :meetingyear => Time.now.year})
    @meetings4 = Meeting.find(:all, :conditions => {:meetingmonth => "4", :meetingyear => Time.now.year})
    @meetings5 = Meeting.find(:all, :conditions => {:meetingmonth => "5", :meetingyear => Time.now.year})
    @meetings6 = Meeting.find(:all, :conditions => {:meetingmonth => "6", :meetingyear => Time.now.year})
    @meetings7 = Meeting.find(:all, :conditions => {:meetingmonth => "7", :meetingyear => Time.now.year})
    @meetings8 = Meeting.find(:all, :conditions => {:meetingmonth => "8", :meetingyear => Time.now.year})
    @meetings9 = Meeting.find(:all, :conditions => {:meetingmonth => "9", :meetingyear => Time.now.year})
    @meetings10 = Meeting.find(:all, :conditions => {:meetingmonth => "10", :meetingyear => Time.now.year})
    @meetings11 = Meeting.find(:all, :conditions => {:meetingmonth => "11", :meetingyear => Time.now.year})
    @meetings12 = Meeting.find(:all, :conditions => {:meetingmonth => "12", :meetingyear => Time.now.year})


    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @meeting }
    end
  end

  # GET /meetings/new
  # GET /meetings/new.json
  def new
    @meeting = Meeting.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @meeting }
    end
  end

  # GET /meetings/1/edit
  def edit
    @meeting = Meeting.find(params[:id])
  end

  # POST /meetings
  # POST /meetings.json
  def create
    @meeting = Meeting.new(params[:meeting])

    respond_to do |format|
      if @meeting.save
        format.html { redirect_to @meeting, notice: 'Meeting was successfully created.' }
        format.json { render json: @meeting, status: :created, location: @meeting }
      else
        format.html { render action: "new" }
        format.json { render json: @meeting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /meetings/1
  # PUT /meetings/1.json
  def update
    @meeting = Meeting.find(params[:id])

    respond_to do |format|
      if @meeting.update_attributes(params[:meeting])
        format.html { redirect_to @meeting, notice: 'Meeting was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @meeting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meetings/1
  # DELETE /meetings/1.json
  def destroy
    @meeting = Meeting.find(params[:id])
    @meeting.destroy

    respond_to do |format|
      format.html { redirect_to meetings_url }
      format.json { head :no_content }
    end
  end
end

end
