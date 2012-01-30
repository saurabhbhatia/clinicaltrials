class TrialsController < InheritedResources::Base
  def index
    @trials = Trial.order("created_at desc").page params[:page]

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @trials }
    end
  end
end
