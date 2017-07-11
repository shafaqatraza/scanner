Rails.application.routes.draw do

  resources :bar_codes
  resources :qr_code_generators
  get 'qr_codes/new'

  get 'qr_codes/show'

  get 'qr_codes/create'

  resources :qr_codes, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


