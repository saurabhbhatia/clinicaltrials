class WebcastsController < ApplicationController
#before_filter :authenticate_admin_user!

#before_filter :authenticate_user!
  # GET /webcasts
  # GET /webcasts.xml
  def index
    @webcasts = Webcast.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @webcasts }
    end
  end

  # GET /webcasts/1
  # GET /webcasts/1.xml
  def show
    @webcast = Webcast.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @webcast }
    end
  end

  # GET /webcasts/new
  # GET /webcasts/new.xml
  def new
    @webcast = Webcast.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @webcast }
    end
  end

  # GET /webcasts/1/edit
  def edit
    @webcast = Webcast.find(params[:id])
  end

  # POST /webcasts
  # POST /webcasts.xml
  def create
    @webcast = Webcast.new(params[:webcast])

    respond_to do |format|
      if @webcast.save
        format.html { redirect_to(@webcast, :notice => 'Webcast was successfully created.') }
        format.xml  { render :xml => @webcast, :status => :created, :location => @webcast }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @webcast.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /webcasts/1
  # PUT /webcasts/1.xml
  def update
    @webcast = Webcast.find(params[:id])

    respond_to do |format|
      if @webcast.update_attributes(params[:webcast])
        format.html { redirect_to(@webcast, :notice => 'Webcast was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @webcast.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /webcasts/1
  # DELETE /webcasts/1.xml
  def destroy
    @webcast = Webcast.find(params[:id])
    @webcast.destroy

    respond_to do |format|
      format.html { redirect_to(webcasts_url) }
      format.xml  { head :ok }
    end
  end
end
