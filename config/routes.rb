Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#homepage'
  get 'about', to: 'pages#about'
  get 'article_news', to: 'articles#new'
  get 'author_new', to: 'authors#new'

  resources :articles
  resources :authors

end
