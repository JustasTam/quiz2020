class AdminToolsController < ApplicationController
	before_action :auth

	def panel
		@panel = AdminTool.take
		@teams = Team.all
	end

	def check_round
		@team = Team.find_by_id(params[:id])
		@round = params[:round]

		if @round == "1"
			@answers = []
			@answers << @team.answ10
			@answers << @team.answ11
			@answers << @team.answ12
			@answers << @team.answ13
			@answers << @team.answ14
			@answers << @team.answ15
			@answers << @team.answ16
			@answers << @team.answ17
			@answers << @team.answ18
			@answers << @team.answ19
			@score = @team.score1
		end
		if @round == "2"
			@answers = []
			@answers << @team.answ20
			@answers << @team.answ21
			@answers << @team.answ22
			@answers << @team.answ23
			@answers << @team.answ24
			@answers << @team.answ25
			@answers << @team.answ26
			@answers << @team.answ27
			@answers << @team.answ28
			@answers << @team.answ29
			@score = @team.score2
		end
		if @round == "3"
			@answers = []
			@answers << @team.answ30
			@answers << @team.answ31
			@answers << @team.answ32
			@answers << @team.answ33
			@answers << @team.answ34
			@answers << @team.answ35
			@answers << @team.answ36
			@answers << @team.answ37
			@answers << @team.answ38
			@answers << @team.answ39
			@score = @team.score3
		end
		if @round == "4"
			@answers = []
			@answers << @team.answ40
			@answers << @team.answ41
			@answers << @team.answ42
			@answers << @team.answ43
			@answers << @team.answ44
			@answers << @team.answ45
			@answers << @team.answ46
			@answers << @team.answ47
			@answers << @team.answ48
			@answers << @team.answ49
			@score = @team.score4
		end
		if @round == "5"
			@answers = []
			@answers << @team.answ50
			@answers << @team.answ51
			@answers << @team.answ52
			@answers << @team.answ53
			@answers << @team.answ54
			@answers << @team.answ55
			@answers << @team.answ56
			@answers << @team.answ57
			@answers << @team.answ58
			@answers << @team.answ59
			@score = @team.score5
		end
	end

	def set_score
		team = Team.find_by_id(params[:team_id])

		if params[:round] == "1"
			team.score1 = params[:set_score].present? ? params[:set_score] : team.score1
			team.save
		end
		if params[:round] == "2"
			team.score2 = params[:set_score].present? ? params[:set_score] : team.score2
			team.save
		end
		if params[:round] == "3"
			team.score3 = params[:set_score].present? ? params[:set_score] : team.score3
			team.save
		end
		if params[:round] == "4"
			team.score4 = params[:set_score].present? ? params[:set_score] : team.score4
			team.save
		end
		if params[:round] == "5"
			team.score5 = params[:set_score].present? ? params[:set_score] : team.score5
			team.save
		end

		redirect_to admin_panel_path
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
		redirect_to root_path if !admin?
	end
end
