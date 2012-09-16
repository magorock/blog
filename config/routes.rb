Blog::Application.routes.draw do
  resources :entries, :only => [:index, :show] do
		collection do
			get :category
			get :tag
			get :archive
		end
  end

  root :to => 'entries#index'
end
