Rails.application.routes.draw do
  root to: 'high_voltage/pages#show', id: 'home'

  devise_for :users, controllers: { registrations: "registrations" }
end
