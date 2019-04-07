Rails.application.routes.draw do


  resources :contacts
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
	resources :books do
		resources :reviews
	end
	root 'books#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
