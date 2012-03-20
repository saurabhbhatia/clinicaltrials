class DownloadsController < InheritedResources::Base
  before_filter :authenticate_user!
def index
@iraas_journal = Download.where("download_type = 'iRaas Journal'").order("created_at asc").page params[:page]
@telma = Download.where("download_type = 'Telma 24 X 7'").order("created_at asc").page params[:page]
@slide_kits = Download.where("download_type = 'Slide Kits'").order("created_at asc").page params[:page]
@pem = Download.where("download_type = 'Patient Education Material'").order("created_at asc").page params[:page]
@guideline = Download.where("download_type = 'Guidelines'").order("created_at asc").page params[:page]
end 
end
