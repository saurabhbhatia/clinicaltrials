class EventsController < InheritedResources::Base
  def index
    @events = Event.where("todate >= ?", Date.today).order("date asc").page params[:page]
   
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @event }
    end
  end

end
