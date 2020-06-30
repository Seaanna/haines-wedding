Rails.application.routes.draw do
  root 'home#index'

  get 'home/index'
  get 'celebrate' => 'home#celebrate'
  get 'meeting' => 'home#meeting'
end
