class HomeController < ApplicationController
	before_action :set_team

	def index
		if @team.present?
			redirect_to home_round1_path if AdminTool.take.round1
			redirect_to home_round2_path if AdminTool.take.round2
			redirect_to home_round3_path if AdminTool.take.round3
			redirect_to home_round4_path if AdminTool.take.round4
			redirect_to home_round5_path if AdminTool.take.round5
		end
	end

	def round1
		Rails.logger.fatal "**************************"
		Rails.logger.fatal Team.find_by_ip_adress(@ip)
		Rails.logger.fatal "**************************"
	end

	def round2
	end
	def round3
	end
	def round4
	end
	def round5
	end

	def create_team
		team = Team.new
		team.name = params[:team_name]
		team.ip_adress = @ip
		team.save

		redirect_to root_path
	end

	private

	def check_ip
    @ip=Socket.ip_address_list.detect{|intf| intf.ipv4_private?}
		@ip = @ip.present? ? @ip.ip_address : "unknown"
		return @ip
	end

	def set_team
		@team = Team.find_by_ip_adress(check_ip)
	end
end
