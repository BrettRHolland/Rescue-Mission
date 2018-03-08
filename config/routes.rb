Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "questions#index"

  resources :questions, only: [:index, :new, :create, :edit, :update, :destroy] do
    resources :answers, only: [:index, :create, :edit, :update]
  end
end
