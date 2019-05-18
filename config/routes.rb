Rails.application.routes.draw do
    root "alimsatims#index"
  resources :alimsatims, :path=>"alimsatim"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
