Rails.application.routes.draw do
  scope :api do
    resources :cities, except: [:new, :edit, :update, :destroy ]
    resources :states, except: [:new, :edit, :update, :destroy ]
  end

  root "ui#index" 
end
