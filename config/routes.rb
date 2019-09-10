Rails.application.routes.draw do
  root 'todos#index'
  get 'todos', to: 'todos#index'
  get 'todos/new', to: 'todos#new'
  post 'todos', to: 'todos#create'
  get 'todos/:id', to: 'todos#show', as: 'todo'
  get 'todos/:id/edit', to: 'todos#edit'
  get 'todos_completed/:id', to: 'todos#completed', as: 'todo_completed'
  patch 'todos/:id', to: 'todos#update'
  delete 'todos/:id', to: 'todos#destroy'
  get '/todos_lista', to: 'todos#lista'

  #-------de esa manera de hacen las rutas-------
  #--------para refactorizar---------
  # resources :todos
  #get 'todos/index', to: 'todos#index' ---->el primero es lo que se escribe en la url y el segundo es 'controlador#metodo'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
