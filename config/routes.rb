Rails.application.routes.draw do
  namespace :admin do
    resources :jobs
    resources :companies
  end
  get "/admin", to: "admin#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/companies", to: "page#companies"
  get "/companies/:id", to: "page#company", as: "company"
  get "/jobs", to: "page#jobs"
  get "/jobs/:id", to: "page#job", as: "job"
  root "page#index"
end
