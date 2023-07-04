Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :bands do
    collection do  
      get :live_info
      get :band_info
    end
  end
  resources :festivals do
    collection do
      get :number_shot
      get :wildbunch
    end
  end
  root 'bands#index'
end
