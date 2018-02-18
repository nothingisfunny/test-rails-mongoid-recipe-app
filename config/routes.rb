Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'recipes#index'
  resources :recipes , only: [:new, :create, :show, :edit, :update, :destroy]
end
