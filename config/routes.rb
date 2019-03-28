Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :examples
      resources :user_examples
      resources :graph_types
    end
  end
end



# / home
# /examples
  # /examples/:id/sluggified-title
  # /examples/:id/sluggified-title/edit
  # /examples/:id/sluggified-title/delete
# /docs
  # /docs/specific-doc-page
