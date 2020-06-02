class HomeController < ApplicationController
	before_action :set_team

	def index
		if @team.present?
			redirect_to home_round1_path if AdminTool.take.round1 && @team.score1.blank?
			redirect_to home_round2_path if AdminTool.take.round2 && @team.score2.blank?
			redirect_to home_round3_path if AdminTool.take.round3 && @team.score3.blank?
			redirect_to home_round4_path if AdminTool.take.round4 && @team.score4.blank?
			redirect_to home_round5_path if AdminTool.take.round5 && @team.score5.blank?
		end
	end

	def round1
		if params["commit"] == "Submit"
			t = Team.find_by_id(@team.id)
			t.score1 = 0
			t.save
		end

		redirect_to root_path if !AdminTool.take.round1 || Team.find_by_id(@team.id).score1.present?
	end

	def round2
		if params["commit"] == "Submit"
			t = Team.find_by_id(@team.id)
			t.answ20 = params[:answer_nr20]
			t.answ21 = params[:answer_nr21]
			t.answ22 = params[:answer_nr22]
			t.answ23 = params[:answer_nr23]
			t.answ24 = params[:answer_nr24]
			t.answ25 = params[:answer_nr25]
			t.answ26 = params[:answer_nr26]
			t.answ27 = params[:answer_nr27]
			t.answ28 = params[:answer_nr28]
			t.answ29 = params[:answer_nr29]
			t.score2 = 0
			t.save
		end
		
		redirect_to root_path if !AdminTool.take.round2 || Team.find_by_id(@team.id).score2.present?
	end

	def round3
		if params["commit"] == "Submit"
			t = Team.find_by_id(@team.id)
			t.answ30 = params[:answer_nr30]
			t.answ31 = params[:answer_nr31]
			t.answ32 = params[:answer_nr32]
			t.answ33 = params[:answer_nr33]
			t.answ34 = params[:answer_nr34]
			t.answ35 = params[:answer_nr35]
			t.answ36 = params[:answer_nr36]
			t.answ37 = params[:answer_nr37]
			t.answ38 = params[:answer_nr38]
			t.answ39 = params[:answer_nr39]
			t.score3 = 0
			t.save
		end
		
		redirect_to root_path if !AdminTool.take.round3 || Team.find_by_id(@team.id).score3.present?
	end

	def round4
		if params["commit"] == "Submit"
			t = Team.find_by_id(@team.id)
			t.answ40 = params[:answer_nr40]
			t.answ41 = params[:answer_nr41]
			t.answ42 = params[:answer_nr42]
			t.answ43 = params[:answer_nr43]
			t.answ44 = params[:answer_nr44]
			t.answ45 = params[:answer_nr45]
			t.answ46 = params[:answer_nr46]
			t.answ47 = params[:answer_nr47]
			t.answ48 = params[:answer_nr48]
			t.answ49 = params[:answer_nr49]
			t.score4 = 0
			t.save
		end
		
		redirect_to root_path if !AdminTool.take.round4 || Team.find_by_id(@team.id).score4.present?
	end

	def round5
		if params["commit"] == "Submit"
			t = Team.find_by_id(@team.id)
			t.answ50 = params[:answer_nr50]
			t.answ51 = params[:answer_nr51]
			t.answ52 = params[:answer_nr52]
			t.answ53 = params[:answer_nr53]
			t.answ54 = params[:answer_nr54]
			t.answ55 = params[:answer_nr55]
			t.answ56 = params[:answer_nr56]
			t.answ57 = params[:answer_nr57]
			t.answ58 = params[:answer_nr58]
			t.answ59 = params[:answer_nr59]
			t.score5 = 0
			t.save
		end
		
		redirect_to root_path if !AdminTool.take.round5 || Team.find_by_id(@team.id).score5.present?
	end

	def create_team
		team = Team.new
		team.name = params[:team_name]
		team.ip_adress = @ip
		team.save

		redirect_to root_path
	end

	def trigger0
		t = Team.find_by_id(@team.id)
		t.answ10 = params[:choice]
		t.save

		redirect_to home_round1_path
	end

	def trigger1
		t = Team.find_by_id(@team.id)
		t.answ11 = params[:choice]
		t.save

		redirect_to home_round1_path
	end

	def trigger2
		t = Team.find_by_id(@team.id)
		t.answ12 = params[:choice]
		t.save

		redirect_to home_round1_path
	end

	def trigger3
		t = Team.find_by_id(@team.id)
		t.answ13 = params[:choice]
		t.save

		redirect_to home_round1_path
	end

	def trigger4
		t = Team.find_by_id(@team.id)
		t.answ14 = params[:choice]
		t.save

		redirect_to home_round1_path
	end

	def trigger5
		t = Team.find_by_id(@team.id)
		t.answ15 = params[:choice]
		t.save

		redirect_to home_round1_path
	end

	def trigger6
		t = Team.find_by_id(@team.id)
		t.answ16 = params[:choice]
		t.save

		redirect_to home_round1_path
	end

	def trigger7
		t = Team.find_by_id(@team.id)
		t.answ17 = params[:choice]
		t.save

		redirect_to home_round1_path
	end

	def trigger8
		t = Team.find_by_id(@team.id)
		t.answ18 = params[:choice]
		t.save

		redirect_to home_round1_path
	end

	def trigger9
		t = Team.find_by_id(@team.id)
		t.answ19 = params[:choice]
		t.save

		redirect_to home_round1_path
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
