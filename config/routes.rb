Rails.application.routes.draw do
  # get 'parks/index'
  # get 'parks/:id', to: 'parks#show'
  # get 'welcome/index'

  resources :parks

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
