Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	
	root 'dashboard#index'
	namespace :api do
		resources :events, only: [:index, :create, :update, :destroy] do
	  		get :search, on: :collection
		end
	end

end
