class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # GET /
  get "/" do
    users = User.all
    users.to_json
  end

  # POST /users
  post "/users" do
    user = User.create(
      name: params[:name],
      email: params[:email],
      password: params[:password]
    )
    user.to_json
  end

  # GET /users
  get "/users" do
    users = User.all
    users.to_json
  end

  # GET /users/:id
  get "/users/:id" do
    user = User.find(params[:id])
    user.to_json
  end

  # PATCH /users/:id
  patch "/users/:id" do
    user = User.find(params[:id])
    user.update(
      name: params[:name],
      email: params[:email],
      password: params[:password]
    )
    user.to_json
  end

  # DELETE /users/:id
  delete "/users/:id" do
    user = User.find(params[:id])
    user.destroy
    { message: "User deleted successfully" }.to_json
  end

  # POST /signups
  post "/signups" do
    signup = Signup.create(
      name: params[:name],
      email: params[:email],
      password: params[:password]
    )
    signup.to_json
  end

  # GET /signups
  get "/signups" do
    signups = Signup.all
    signups.to_json
  end

  # GET /signups/:id
  get "/signups/:id" do
    signup = Signup.find(params[:id])
    signup.to_json
  end

  # PATCH /signups/:id
  patch "/signups/:id" do
    signup = Signup.find(params[:id])
    signup.update(
      name: params[:name],
      email: params[:email],
      password: params[:password]
    )
    signup.to_json
  end

  # DELETE /signups/:id
  delete "/signups/:id" do
    signup = Signup.find(params[:id])
    signup.destroy
    { message: "Signup deleted successfully" }.to_json
  end

  # POST /todos
  post "/todos" do
    todo = Todo.create(
      name: params[:name],
      todo: params[:todo]
    )
    todo.to_json
  end

  # GET /todos
  get "/todos" do
    todos = Todo.all
    todos.to_json
  end

  # GET /todos/:id
  get "/todos/:id" do
    todo = Todo.find(params[:id])
    todo.to_json
  end

  # PATCH /todos/:id
  patch "/todos/:id" do
    todo = Todo.find(params[:id])
    todo.update(
      name: params[:name],
      todo: params[:todo]
    )
    todo.to_json
  end

  # DELETE /todos/:id
  delete "/todos/:id" do
    todo = Todo.find(params[:id])
    todo.destroy
    { message: "Todo deleted successfully" }.to_json
  end
end
