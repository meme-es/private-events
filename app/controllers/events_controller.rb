class EventsController < ApplicationController
  before_action :user_is_logged_in
  before_action :set_event, only: %i[show edit update destroy]

  def user_is_logged_in
    redirect_to login_path unless session[:user_id]
  end

  # GET /events
  # GET /events.json
  def index
    @events = Event.all
    @attend_events = current_user.attended_events
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @attendees = @event.attendees
  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def edit; end

  # POST /events
  # POST /events.json
  def create
    @user = User.find(session[:user_id])
    @event = @user.events.build(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to events_path, notice: 'Event was successfully created.' }
        format.json { redirect_to events_path, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params_update)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_event
    @event = Event.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def event_params
    params.require(:event).permit(:title, :description, :date, :location)
  end

  def event_params_update
    params.require(:event).permit(:title, :description, :date, :location, :user_id)
  end
end
