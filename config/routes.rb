Rails.application.routes.draw do
  root 'questions#index'
  devise_for :users
  get 'questions/destroy'
  get 'questions/edit'
  get 'questions/update'
  get 'answers/destroy'
  get 'answers/edit'
  get 'answers/update'
  mount Ckeditor::Engine => '/ckeditor'

  resources :questions
  resources :answers
  resources :comments
  resources :majors
  resources :questions do
    member do
      put "like", to: "questions#upvote"
    end
  end
  resources :answers do
    member do
      put "like", to: "answers#upvote"
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
