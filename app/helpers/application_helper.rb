module ApplicationHelper
	def admin?
		Rails.logger.fatal "********"
		Rails.logger.fatal request.remote_ip
		Rails.logger.fatal "********"
		request.remote_ip == "127.0.0.1"
	end
end
