Rails.application.routes.draw do
  #get '/articles/:id', to: 'articles#edit', as: 'article'
  #scope shallow_path: "sekret" do
  resources :articles do
  	#get '/articles/:id', to: 'articles#show'
  	resources :comments#, shallow: true
end
#end
#resources :signin, :login, :users
#resource :user

namespace :admin do
  resources :articles, :comments
end
# scope module: 'admin' do
#   resources :articles, :comments
# end
# scope '/admin' do
#   resources :articles, :comments
# end
root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
