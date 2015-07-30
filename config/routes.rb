Rails.application.routes.draw do
  root "events#index"
  # get "events" => "events#index"
  # get "events/:id" => "events#show", as: "event"
  # get "events/:id/edit" => "events#edit", as: "edit_event"
  # # no link to update action since form automatically posts there
  # patch "events/:id" => "events#update"
  resources :events
end
