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
   @symbol=params[:choose]

   hh={:a=>'Enter first value',:b=>'Enter second value',:choose=>"Enter you move"}

   hh.each do |key,value| 
      if params[key]==''
         @error=hh[key]
         return erb:home
      end
   end

   if @symbol=='+'
      erb"#{@first.to_i + @second.to_i}" # что бы вычесление работало нужно писать за пределом цикла
   elsif @symbol=='-'
      erb"#{@first.to_i - @second.to_i}"
   elsif @symbol=='*'
      erb"#{@first.to_i * @second.to_i}"
   elsif @symbol=='/'
      erb"#{@first.to_i / @second.to_i}"
   end
end

# В блоке post '/home' есть цикл, который проверяет, 
# что все поля формы заполнены.
#  Если какое-то поле не заполнено, то выводится сообщение об ошибке и возвращается шаблон home.
#   Однако, если все поля заполнены, то код не выполняется, и результат сложения не выводится.
#    Чтобы исправить это, нужно переместить строку erb "#{@first + @second}" за пределы цикла, чтобы она была вызвана,
#  только если все поля заполнены.