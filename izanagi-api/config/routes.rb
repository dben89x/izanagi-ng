Rails.application.routes.draw do
	root to: 'home#index'

	resources :monster_drop_records
	resources :monster_drops
	resources :drops
	resources :monsters
	resources :records
end
