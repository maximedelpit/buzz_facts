Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :buzz_facts do
    resources :likes, only: [:new, :create, :destroy]
  end
end
