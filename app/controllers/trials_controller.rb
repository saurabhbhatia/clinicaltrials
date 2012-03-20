class TrialsController < InheritedResources::Base
authorize_resource :only => [:index, :show]
  def index
    @trials = Trial.order("created_at desc").page params[:page]

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @trials }
    end
  end
 def show 
  @trial = Trial.find(params[:id])
 end
end
