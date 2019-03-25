Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :examples
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
