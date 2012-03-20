class DrugInfosController < InheritedResources::Base
  skip_authorization_check :only => [:search]

def index
#@drug_infos = DrugInfo.all
@drug_infos = DrugInfo.alphabetical_group(params[:letter])
end
def search
@drug_search = DrugInfo.search params[:search], :match_mode => :any
@drug_search.page params[:page]

if @drug_search.empty? || params[:search].blank? 
    flash[:error] = "Sorry no results found matching the key term" if @drug_search.empty?
    flash[:error] = "Please enter a keyword to search for" if params[:search].blank? 
    redirect_to drug_infos_path
end
end

end
