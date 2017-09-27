require 'sinatra'
require_relative "./ToDoManager.rb"


# returns the value
get '/todos' do
	ToDoManager.index
end

# returns the element at given index
post '/todos/:id' do
	id=params[:id]
	id = Integer(id)
	ToDoManager.show id
end

# Create new element and pushes into array
post '/todos' do
	to_add=params[:todos]
	ToDoManager.create to_add
end

# changes the value of a given element
put '/todos/:id' do
    id=params[:id]
    id = Integer(id)
    ToDoManager.update(id, "helllo")
end

# removes a element from a given index
delete '/todos/:id' do
	id = params[:id].to_f
	ToDoManager.delete id
end