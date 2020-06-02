module ApplicationHelper
	def admin?
		@ip=Socket.ip_address_list.detect{|intf| intf.ipv4_private?}
		@ip.ip_address == "192.168.2.104"
	end
end
