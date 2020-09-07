Rails.application.routes.draw do
  if Rails.env.development?
      mount GraphiQL::Rails::Engine, at: '/v1/graphiql', graphql_path: 'graphql#execute'
  end 
  post "/v1/graphql", to: "graphql#execute"
end
