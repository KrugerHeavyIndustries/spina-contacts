Spina::Engine.routes.draw do
   get '/contact', to: 'contacts#new'
   post '/contact', to: 'contacts#create'
end
