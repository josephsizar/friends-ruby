Rails.application.routes.draw do
  get 'articles/index'
  get 'articles/show/:id', to:"articles#show", as: :articles_show

  get 'students/index'
  get 'students/show/:id', to:"students#show", as: :students_show

  root "articles#index"
end
