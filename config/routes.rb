Rails.application.routes.draw do
  namespace :admin do
    resources :jobs
    resources :companies
  end
  get "/admin", to: "admin#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "page#index"
end
