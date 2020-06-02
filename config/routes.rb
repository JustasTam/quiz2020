Rails.application.routes.draw do
  root to: "home#index"

  post 'home/create_team'

	match 'home/round1', to: 'home#round1', via: [:get, :post]
	match 'home/round2', to: 'home#round2', via: [:get, :post]
	match 'home/round3', to: 'home#round3', via: [:get, :post]
	match 'home/round4', to: 'home#round4', via: [:get, :post]
	match 'home/round5', to: 'home#round5', via: [:get, :post]

	match 'admin/panel', to: 'admin_tools#panel', via: [:get, :post]
	match 'admin/trigger_round1', to: 'admin_tools#trigger_round1', via: [:get, :post]
	match 'admin/trigger_round2', to: 'admin_tools#trigger_round2', via: [:get, :post]
	match 'admin/trigger_round3', to: 'admin_tools#trigger_round3', via: [:get, :post]
	match 'admin/trigger_round4', to: 'admin_tools#trigger_round4', via: [:get, :post]
	match 'admin/trigger_round5', to: 'admin_tools#trigger_round5', via: [:get, :post]
end
