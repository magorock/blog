Blog::Application.routes.draw do
  resources :entries, :only => [:index, :show] do
		collection do
			get :category
		end
  end

  root :to => 'entries#index'
end
