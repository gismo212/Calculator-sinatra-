require'sinatra'
require'rubygems'
require'sinatra/reloader'

get'/' do
      erb "Hello! enter the home tab and let's get started"
end


get'/home' do
   erb:home
end

post'/home' do
   @first=params[:a]
   @second=params[:b]
   #@symbol=params[:c]
   #erb "вычисление значений"
   erb:home
end
#error