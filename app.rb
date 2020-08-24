require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do 
     
     erb :index 

    end

    # get '/' do
    # #    <%  <a href="/new">List A Puppy</a> %

    # #    <a href=“insert route here”>Link Text</a> 

    #  erb :create_puppy

    # end

    get '/new' do
        
     erb :new

    end 

    post '/puppy' do 
        @name = params[:name]
        @age = params[:age]
        @breed = params[:breed]
        @puppy = Puppy.new(params[:name], params[:breed], params[:age])
        # @puppy.name = puppy_name 
        # @puppy.breed = puppy_breed 
        # @puppy.age  = puppy_age

        erb :display_puppy
    end

end
