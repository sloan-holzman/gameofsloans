Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  root to: 'houses#index'

  resources :houses do
    resources :characters do
      resources :tags
    end
  end
  get 'categories/:id' => 'categories#show', :as => :category_show

end
