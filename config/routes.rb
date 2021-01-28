Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users

  root :to => "home#index"

  match '/ravel' => 'ravel#index', :via => [:get, :post]
  match '/ravel/warp-and-weft' => 'ravel#warp_and_weft', :via => [:get, :post]
  match '/ravel/contraband' => 'ravel#contraband', :via => [:get, :post]
  match '/oranges_and_bananas' => 'home#oranges_and_bananas', :via => [:get, :post]

end
