Rails.application.routes.draw do
  devise_for :users
  
	get 'home/index'
	
	root 'home#index'
	
	resources :products do
		resources :comments
	end

	require 'sidekiq/web'
	require 'sidekiq-scheduler/web'
	mount Sidekiq::Web => '/sidekiq'


	
#get 'vn/:gender', to: 'products#index' 
#get 'vn/:age', to: 'products#index' 
#get 'vn/:franchise', to: 'products#index' 
#get 'vn/:brand', to: 'products#index' 
#get 'vn/:sports', to: 'products#index' 
#get 'vn/:producttype', to: 'products#index' 
#get 'vn/:parner', to: 'products#index' 
get ':gender/:brand/:category', to: 'products#index' 
#get 'vn/:miadidas', to: 'products#index' 
  	# Để biết chi tiết về DSL có sẵn trong tệp này, hãy xem http://guides.rubyonrails.org/routing.html
end
