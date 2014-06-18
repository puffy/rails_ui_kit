# RailsUiKit

Helpful components for developing UI in Rails.

Inspired by Cameron Daigle (Hashrocket) series of posts:
* http://hashrocket.com/blog/posts/managing-design-handoffs-with-the-ui-controller
* http://hashrocket.com/blog/posts/the-ui-controller-part-2-faking-it
* http://hashrocket.com/blog/posts/the-ui-controller-part-3-the-ui-helper

## Installation and configuration

All you need to do is add the next line to your application's Gemfile:

    gem 'rails_ui_kit'

And then execute:

    $ bundle

Create your own layout in `app/views/layouts` (e.g. `ui.html.erb`) and define `ui_layout` method in your super controller (`ApplicationController`):

```ruby
class ApplicationController < ActionController::Base
  protected

  def ui_layout
    'ui'
  end
end
```

## Usage

Create UI templates in `app/views/ui/` folder, partials will be ignored.  
Browse /ui/ path within app url in the browser to view list of UI templates.

[Current UI helpers](https://github.com/puffy/rails_ui_kit/blob/master/app/helpers/ui_helper.rb)

## Contributing

1. Fork it ( http://github.com/puffy/rails_ui_kit/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
