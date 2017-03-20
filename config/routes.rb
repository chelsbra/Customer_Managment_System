Rails.application.routes.draw do
  get 'finder/index'

  get 'finder/alphabetized'

  get 'finder/missing_email'

	devise_for :admin_users, ActiveAdmin::Devise.config
	ActiveAdmin.routes(self)
  # get 'customers/index'

  # get 'customers/show'

  resources 'customers', only: [:index, :show]

  #load cust page
  root to: 'customers#index'

  # devise_for :admin_users, ActiveAdmin::Devise.config
  # ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
