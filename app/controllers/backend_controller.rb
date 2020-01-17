class BackendController < ApplicationController
  before_action :authenticate_user!
  protect_from_forgery with: :null_session, if: ->{request.format.json?}

  def index;end;

  def change_stats
	unless modify_stats = Stat.first
		modify_stats = Stat.new
	end
	modify_stats["number_of_patients_served"] = params["number_of_patients_served"]
	modify_stats["distribution_of_patients"] = params["distribution_of_patients"]
	modify_stats["diagnostic_procedures_performed"] = params["diagnostic_procedures_performed"]
	modify_stats["stats_from"] = params["stats_from"]
	modify_stats["stats_to"] = params["stats_to"]
	modify_stats["no_of_villages"] = params["no_of_villages"]
	modify_stats["no_of_mandals"] = params["no_of_mandals"]

	modify_stats.save!
  end

end
