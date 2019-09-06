class TodosController < ApplicationController
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
            redirect_to todos_path, notice:'ERROR'
        end 
    end
    def show
      @todo = Todo.find(params[:id])  
    end
    def edit
        @todo = Todo.find(params[:id])  
    end 
    def completo
        @todo = Todo.find(params[:id])
        @todo.completed = true
        @todo.save
        redirect_to todos_path
    end       
    private
    def todo_params
        params.require(:todo).permit(:description)
    end

end
