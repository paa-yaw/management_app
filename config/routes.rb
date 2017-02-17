Rails.application.routes.draw do


get 'identifier/identify', to: 'identifier#identify', as: :identifier
post 'identifier/authenticate', to: 'identifier#authenticate'
devise_for :recruiters, controllers: { registrations: "recruiter/registrations" }
devise_for :companies, controllers: { registrations: "company/registrations", sessions: "company/sessions" }
  namespace :recruiter do
    root 'welcome#dashboard', as: :dashboard
    get 'welcome/charts_and_graphs', as: :charts_and_graphs
    get 'welcome/calendar', as: :calendar
    get 'requests/demo_requests', as: :demo_requests
    patch 'requests/:id/contact', to: 'requests#contact', as: :contact
    patch 'requests/:id/no_contact', to: 'requests#no_contact', as: :no_contact

  end

  root 'welcome#landing_page'

  get 'company/company_dashboard', as: :company_dashboard
  get 'company/charts_and_graphs'
  get 'company/calendar'

  resources :requests, only: [:new, :create]
end
