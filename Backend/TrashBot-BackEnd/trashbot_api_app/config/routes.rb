Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post 'auth/register', to: 'users#register'
  post 'auth/login', to: 'users#login'
  get 'test', to: 'users#test'
  get '/stats/reciclar', to: 'stats#reciclar'
  get '/stats/definiciones', to: 'stats#definiciones'
  get '/stats/operadores', to: 'stats#operadores'

  namespace 'api' do
    namespace 'v1' do
      resources :eventos
      resources :chats
    end
  end

end
