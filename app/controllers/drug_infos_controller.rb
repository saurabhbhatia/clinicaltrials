class DrugInfosController < InheritedResources::Base


def index
#@drug_infos = DrugInfo.all
@drug_infos = DrugInfo.alphabetical_group(params[:letter])
end


end
