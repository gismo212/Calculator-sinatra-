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


   hh={:a=>'Enter first value',:b=>'Enter second value'}

   hh.each do |key,value| 
      if params[key]==''
         @error=hh[key]
         erb:home
      end
   end

   erb:home
end
#error