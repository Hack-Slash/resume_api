Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

namespace :api do
  namespace :v1 do
    get '/students' => 'students#index'
    get '/students/:id' => 'student#show'
    post '/students' => 'student#create'
    patch '/students/:id' => 'student#update'
    delete '/students/:id' => 'student#destroy'
    get 'students' => 'students#show'
    end
  end
end
