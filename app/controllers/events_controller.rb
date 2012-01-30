class EventsController < InheritedResources::Base
  def index
    @events = Event.order("date asc").page params[:page]
 
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @event }
    end
  end
end
