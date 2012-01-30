class CvnsController < InheritedResources::Base
  def index
    @cvns = Cvn.order("created_at desc").page params[:page]

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cvns }
    end
  end

end
