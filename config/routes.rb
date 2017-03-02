Rails.application.routes.draw do
  get 'park/index'
  get 'park/:id', to:'park/show'
  get 'welcome/index'

  resources :parks

root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
