Rails.application.routes.prepend do
  match 'ui(/:action)', controller: 'ui'
end
