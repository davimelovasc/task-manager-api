require 'api_version_constraint'

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api, defaults: { format: :json }, path: "/" do
    namespace :v1, constraints: ApiVersionConstraint.new(version: 1, default: true), path: "/" do
    end
  end


end
