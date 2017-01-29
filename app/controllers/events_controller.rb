class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  # GET /events
  # GET /events.json
  def index
    @events = Event.all
  end

  # GET /events/1
  # GET /events/1.json
  def show
  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)
     if @event.impact > 69.0 
       @link = "psa.fertec.fr/?date=#{@event.date}"
       sandsms(@event.name, @link, @event.proba, @event.date )
     else
     end
    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
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
      if @event.update(event_params)
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

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:name, :proba, :impact, :fiab, :date, :description)
    end
    def  sandsms(name, link, proba, date)
        require 'uri'
        require 'net/http'
        
        url = URI("https://api.tropo.com/1.0/sessions?action=create&token=617074795859526c4d4c4655525a6e6c59626d454f755446486c4d676e42506f5276476b7562516970464674&phonenumber=%2033601021604&msg=Probleme%20probable:%20#{name}%20le%20#{date}.%20Voir%20les%20details%20#{link}")
        
        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE
        
        request = Net::HTTP::Get.new(url)
        request["cache-control"] = 'no-cache'
        request["postman-token"] = '64c7c0d1-9c12-8094-3425-872f377c1037'
        
        response = http.request(request)
        puts response.read_body
    end
end
