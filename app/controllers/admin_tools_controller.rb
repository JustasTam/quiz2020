class AdminToolsController < ApplicationController
	before_action :auth

	def panel
		@panel = AdminTool.take
	end

	def trigger_round1
		at = AdminTool.take
		at.round1 = at.round1 ? false : true
		at.save

		redirect_to admin_panel_path
	end	

	def trigger_round2
		at = AdminTool.take
		at.round2 = at.round2 ? false : true
		at.save

		redirect_to admin_panel_path
	end

	def trigger_round3
		at = AdminTool.take
		at.round3 = at.round3 ? false : true
		at.save

		redirect_to admin_panel_path
	end

	def trigger_round4
		at = AdminTool.take
		at.round4 = at.round4 ? false : true
		at.save

		redirect_to admin_panel_path
	end

	def trigger_round5
		at = AdminTool.take
		at.round5 = at.round5 ? false : true
		at.save

		redirect_to admin_panel_path
	end

	private

	def auth
		@ip=Socket.ip_address_list.detect{|intf| intf.ipv4_private?}
		redirect_to root_path if @ip.ip_address != "192.168.2.104"
	end
end
