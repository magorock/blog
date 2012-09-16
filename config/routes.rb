Blog::Application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  resources :entries, :only => [:index, :show] do
		collection do
			get :category
			get :tag
			get :archive
		end
  end

  root :to => 'entries#index'
end
