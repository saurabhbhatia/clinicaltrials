class DrugInfosController < InheritedResources::Base


def index
@drug_infos = DrugInfo.all
@drug_info = DrugInfo.all.group_by{|u| u.title[0]}
end


end
