Rails.application.routes.draw do

	devise_for :admin_users, ActiveAdmin::Devise.config
	ActiveAdmin.routes(self)

  resources 'finder', only: [:index, :alphabetized, :missing_email]

  # resources :finder do
  #   member do
  #     get ''
  #   end
  # end
  get 'customer/missing_email' => 'finder#missing_email'
  #load cust page
  root to: 'finder#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
