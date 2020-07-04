Rails.application.routes.draw do
  root 'home#index'

  get 'home/index'
  get 'celebrate' => 'home#celebrate'
  get 'meeting' => 'home#meeting'
  get 'live-stream' => 'home#meeting'
  get 'live-stream/view' => 'home#live_stream', as: 'view_live_stream'
end
