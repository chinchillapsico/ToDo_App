Rails.application.routes.draw do
  root "todos#index"
  get "todos", to: "todos#index"
  get 'todos/new', to: "todos#new"
  post "todos", to: "todos#create"
  get 'todos/:id', to: "todos#show", as: 'todo'
  get 'todos/:id/edit', to: "todos#edit"
  get 'todos_completo/:id', to: 'todos#completo', as: 'todo_completo'
  #get 'todos/index', to: 'todos#index' ---->el primero es lo que se escribe en la url y el segundo es 'controlador#metodo'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
