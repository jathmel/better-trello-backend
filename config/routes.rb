Rails.application.routes.draw do

  # team_member routes
  namespace :api do
    namespace :v1 do
      get '/team_members' => 'team_members#index'
      get '/team_members/:id' => 'team_members#show'
      post 'team_members/create'
      patch 'team_members/update'
      delete 'team_members/destroy'
      # custom routes
      get '/team_members/my_projects' => 'team_members#my_projects'
      get '/team_members/my_tasks' => 'team_members#my_tasks'
      get '/team_members/my_teams' => 'team_members#my_teams'
    end
  end

  # task routes
  namespace :api do
    namespace :v1 do
      get 'tasks/index'
      get 'tasks/show'
      post 'tasks/create'
      patch 'tasks/update'
      delete 'tasks/destroy'
    end
  end

  # project routes
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
