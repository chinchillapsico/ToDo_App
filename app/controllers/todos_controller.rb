class TodosController < ApplicationController
    before_action :find_todo, only: [ :show, :edit, :completed, :update, :destroy ]
    
    #antes de que suceda cualquier metodo llama a la funcion find_todo, que se define en private, este metodo se utilizara solo (only) en los metodos del array especificado.

    def  index
        @todos = Todo.all
        # index es un metodo que contiene un avariable de instancia @todos. esta variable almacena todos los "todos" existentes.
    end 
    def new
        @todo = Todo.new
    end
    def create
        @todo = Todo.new(todo_params)
        if @todo.save
            redirect_to todos_path 
            #esto redirige al index paa que al crear un nnueva actividad ésta al ser creada te devulevala comienzo con la lista completa
        else
            redirect_to todos_path, notice:'Ingrese la tarea'
        end 
    end

    def show   
    end

    def edit    
    end 

    def completed
        @todo.completed = true
        @todo.save
        redirect_to todos_path
    end 

    def update
        @todo.update(todo_params)
        redirect_to todos_path
    end  

    def destroy
        @todo.destroy
        redirect_to todos_path
    end

    def lista
        @todos = Todo.all
        @todos_completed = Todo.where(completed: true)
        @todos_uncompleted = Todo.where(completed: [false, nil])
    end  

    private
    def todo_params
        params.require(:todo).permit(:description)
    end
    def find_todo
        @todo = Todo.find(params[:id])
    end    
    
    

end
