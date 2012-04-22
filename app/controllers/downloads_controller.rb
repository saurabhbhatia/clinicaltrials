class DownloadsController < InheritedResources::Base
  before_filter :authenticate_user!
def index
@iraas_journal = Download.where("download_type = 'iRaas Journal'").order("created_at desc").page params[:page]
@telma = Download.where("download_type = 'Telma 24 X 7'").order("created_at desc").page params[:page]
@slide_kits = Download.where("download_type = 'Slide Kits'").order("created_at desc").page params[:page]
@pem = Download.where("download_type = 'Patient Education Material'").order("created_at desc").page params[:page]
@guideline = Download.where("download_type = 'Guidelines'").order("created_at desc").page params[:page]
@vg = Download.where("download_type = 'Video Gallery'").order("created_at desc").page params[:page]
@gaa = Download.where("download_type = 'Guideline - Antcoagulant Antiplatelet'").order("created_at desc").page params[:page]
@ga = Download.where("download_type = 'Guideline - Arrythmias'").order("created_at desc").page params[:page]
@gchd = Download.where("download_type = 'Guideline - Coronary Heart Disease'").order("created_at desc").page params[:page]
@gci = Download.where("download_type = 'Guideline - Coronary Intervantions'").order("created_at desc").page params[:page]
@gd = Download.where("download_type = 'Guideline - Diabetes'").order("created_at desc").page params[:page]
@ghdw = Download.where("download_type = 'Guideline - Heart Disease & Women'").order("created_at desc").page params[:page]
@ghf = Download.where("download_type = 'Guideline - Hypertension'").order("created_at desc").page params[:page]
end 
end
