Rails.application.routes.draw do
  scope :api do
    resources :cities, except: [:new, :edit]
    resources :states, except: [:new, :edit]
  end

  root "ui#index" 
end
