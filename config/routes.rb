Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "greats#index"
  
  resources :greats, only:[:index,:new,:create,:show,:edit,:update,:destroy] do
    collection 
      scope '/greats' do
        get '/job', to: 'greats#job', as: 'job'
     end
      scope '/greats' do
        get '/love', to: 'greats#love', as: 'love'
      end
      scope '/greats' do
        get '/dream', to: 'greats#dream', as: 'dream'
    end
      scope '/greats' do
        get '/life', to: 'greats#life', as: 'life'
     end
      scope '/greats' do
        get '/sports', to: 'greats#sports', as: 'sports'
    
      scope '/greats' do
        get '/history', to: 'greats#history', as: 'history'
    end
      scope '/greats' do
        get '/anime', to: 'greats#anime', as: 'anime'
    end
    scope '/greats' do
      get '/serach/', to: 'greats#serach', as:'serach'
    end
    scope '/greats/:id' do
      get '/form/', to: 'greats#form', as: 'form'
    end
    end
    resources :likes, only: [:create, :destroy]
  end
  resources :user, only: [:show]
end

