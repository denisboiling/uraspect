Uraspect::Application.routes.draw do

  mount_roboto

  root :to => "pages#index"

  mount Ckeditor::Engine => '/ckeditor'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :reviews, :only => :create
  resources :docs, :only => :index do
    get 'load'
  end
  resources :pages do
    get 'search', on: :collection
  end
  get 'leave_a_comment' => 'pages#leave_a_comment'
  get 'jurisprudences' => 'jurisprudences#index'
  get 'index' => 'pages#index'
  get 'thanks' => 'orders#thanks', :as => :thanks
  get ':slug' => 'pages#show', :as => :slug

  get 'jurisprudences/:id' => 'jurisprudences#show'

  resources :orders
  resources :pages
  resources :jurisprudences
  resources :feedbacks, :only => :create
end
