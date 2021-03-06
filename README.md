# RailsUiKit

[![Code Climate](https://codeclimate.com/github/puffy/rails_ui_kit.png)](https://codeclimate.com/github/puffy/rails_ui_kit)

Tool for developing markup (UI) in Rails.

Inspired by Cameron Daigle (Hashrocket) series of posts:
* http://hashrocket.com/blog/posts/managing-design-handoffs-with-the-ui-controller
* http://hashrocket.com/blog/posts/the-ui-controller-part-2-faking-it
* http://hashrocket.com/blog/posts/the-ui-controller-part-3-the-ui-helper

What included in the gem:

* controller for browsing list of UI templates
* helpers for creating sample data in the UI templates (read more about using in the above links)

This gem is compatible with Rails 3 and 4.

## Installation and configuration

Add the next line to your application's Gemfile:

```ruby
gem 'rails_ui_kit', group: :development
```

*Note: If you want to use gem functionality on staging or production environment, don't forget to restrict access for `/ui` resource if it necessary.*

And then execute:

    $ bundle

Mount engine routes in application `config/routes.rb`:

```ruby
Rails.application.routes.draw do
  mount RailsUiKit::Engine => '/', as: 'rails_ui_kit'
end
```

Create your own layout in `app/views/layouts` (e.g. `ui.html.erb`) and define `ui_layout` method in your `ApplicationController`:

```ruby
class ApplicationController < ActionController::Base
  protected

  def ui_layout
    'ui'
  end
end
```

## Usage

Create UI templates in application `app/views/ui/` folder.
Browse `/ui/` path within app url in the browser to view the list of UI templates (partials and folders will be ignored).

[Current UI helpers](https://github.com/puffy/rails_ui_kit/blob/master/app/helpers/ui_helper.rb)

## Override / add functionality

Just create file in `config/initializers/`, e.g.:

```ruby
# config/initializers/ui_helper_override.rb
module UiHelper
  def lorem_awesome
    'woot'
  end
end
```

## Contributing

1. Fork it ( http://github.com/puffy/rails_ui_kit/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
