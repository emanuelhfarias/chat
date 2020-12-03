Rails.application.routes.draw do
  namespace :talent do
    get :chats, to: 'chats#index'
    post 'chats/:id', to: 'chats#create'
    get 'chats/:id', to: 'chats#show'
    post 'chats/:id/read', to: 'chats#read'
  end

  namespace :employee do
    get :chats, to: 'chats#index'
    post 'chats/:id', to: 'chats#create'
    get 'chats/:id', to: 'chats#show'
    post 'chats/:id/read', to: 'chats#read'
    post 'chats/:id/execute', to: 'chats#execute'
  end
end
