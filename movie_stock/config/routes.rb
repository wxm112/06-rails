Rails.application.routes.draw do
  root :to => 'stock#home'
  get '/home' => 'stock#home'
  get '/stock/lookup' => 'stock#lookup'
  get '/stock/result' => 'stock#result'

  get '/movie/lookup' => 'movie#lookup'
  get '/movie/list' => 'movie#list'
  get '/movie/result/:title' => 'movie#result'
  get '/movie/error' => 'movie#error'


end
