Blog::Application.routes.draw do
  resources :entries, :only => [:index, :show]

  root :to => 'entries#index'
end
