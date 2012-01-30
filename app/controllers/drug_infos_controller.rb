class DrugInfosController < InheritedResources::Base


def index
#@drug_infos = DrugInfo.all
@drug_infos = DrugInfo.alphabetical_group(params[:letter])
@drug_search = DrugInfo.search params[:search], :include => :author
end


end
