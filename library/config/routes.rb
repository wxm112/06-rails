Rails.application.routes.draw do
  get 'books/index'

  get 'books/create'

  get 'books/new'

  get 'books/edit'

  get 'books/show'

  get 'books/update'

  get 'books/destroy'

 root :to => 'authors#index'
 resources :authors, :books
end
