class UpdatesController < InheritedResources::Base
  def index
    @updates = Update.order("created_at desc").page params[:page]

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @updates }
    end
  end

end
