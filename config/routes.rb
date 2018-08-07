Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/team_members' => 'team_members#index'
      get '/team_members/:id' => 'team_members#show'
      post 'team_members/create'
      patch 'team_members/update'
      delete 'team_members/destroy'
    end
  end
  namespace :api do
    namespace :v1 do
      get 'tasks/index'
      get 'tasks/show'
      post 'tasks/create'
      patch 'tasks/update'
      delete 'tasks/destroy'
    end
  end
  namespace :api do
    namespace :v1 do
      get 'projects/index'
      get 'projects/show'
      post 'projects/create'
      patch 'projects/update'
      delete 'projects/destroy'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
