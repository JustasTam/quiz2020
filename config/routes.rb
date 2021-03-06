Rails.application.routes.draw do
  root to: "home#index"

  post 'home/create_team'

	match 'home/round1', to: 'home#round1', via: [:get, :post]
	match 'home/round2', to: 'home#round2', via: [:get, :post]
	match 'home/round3', to: 'home#round3', via: [:get, :post]
	match 'home/round4', to: 'home#round4', via: [:get, :post]
	match 'home/round5', to: 'home#round5', via: [:get, :post]

	match 'home/round1/choice0', to: 'home#trigger0', via: [:get, :post]
	match 'home/round1/choice1', to: 'home#trigger1', via: [:get, :post]
	match 'home/round1/choice2', to: 'home#trigger2', via: [:get, :post]
	match 'home/round1/choice3', to: 'home#trigger3', via: [:get, :post]
	match 'home/round1/choice4', to: 'home#trigger4', via: [:get, :post]
	match 'home/round1/choice5', to: 'home#trigger5', via: [:get, :post]
	match 'home/round1/choice6', to: 'home#trigger6', via: [:get, :post]
	match 'home/round1/choice7', to: 'home#trigger7', via: [:get, :post]
	match 'home/round1/choice8', to: 'home#trigger8', via: [:get, :post]
	match 'home/round1/choice9', to: 'home#trigger9', via: [:get, :post]

	match 'admin/panel', to: 'admin_tools#panel', via: [:get, :post]
	match 'admin/trigger_round1', to: 'admin_tools#trigger_round1', via: [:get, :post]
	match 'admin/trigger_round2', to: 'admin_tools#trigger_round2', via: [:get, :post]
	match 'admin/trigger_round3', to: 'admin_tools#trigger_round3', via: [:get, :post]
	match 'admin/trigger_round4', to: 'admin_tools#trigger_round4', via: [:get, :post]
	match 'admin/trigger_round5', to: 'admin_tools#trigger_round5', via: [:get, :post]

	match 'admin/check_round/:id', to: 'admin_tools#check_round', via: [:get, :post]
	match 'admin/set_score', to: 'admin_tools#set_score', via: [:get, :post]
end
