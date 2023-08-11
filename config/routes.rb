Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/chatbot', to: 'chatbot#index'
  post '/webhook', to: 'chatbot#webhook'
end
