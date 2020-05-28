class AttendancesController < ApplicationController
  def create
    @attendance = Attendance.new(event_id: params[:event_id], user_id: params[:user_id])
    @attendance.save

    redirect_to events_url, notice: 'Event added in your attending events'
  end
end
