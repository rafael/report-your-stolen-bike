ReportStolenBike::Application.routes.draw do
  resources :reports
  root :to => 'home#index'
end
