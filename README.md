# AjaxSubmitRails

Integrates [jquery.form](https://github.com/jquery-form/form) with the Rails asset pipeline.  
Supports AJAX form submission. Also submits form with file field with AJAX request.

## Version mapping

|ajax_submit_rails version|jquery.form version|required jQuery version|
|---|---|---|
|0.2.0 (LATEST)|4.3.0|v1.7.2 or later|
|0.1.1|3.51.0-2014.06.20|v1.5 or later|
|0.1.0|3.51.0-2014.06.20|v1.5 or later|

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ajax_submit_rails'
```

And then execute:
```bash
  $ bundle
```

## Integration

### Rails app with [Asset Pipeline](http://guides.rubyonrails.org/asset_pipeline.html)

If you're using the [asset pipeline](http://guides.rubyonrails.org/asset_pipeline.html),  
then you must add the following line to your `app/assets/javascripts/application.js`.

```javascript
//= require jquery.form.min
```
Some people may need to add the extension to make it work
```javascript
//= require jquery.form.min.js
```
You can also include unminified version (not recommended)
```javascript
//= require jquery.form
```

### Rails app without [Asset Pipeline](http://guides.rubyonrails.org/asset_pipeline.html)

Include javascript in your layout file as following.

For example:
`application.html.erb`

```erb
<%= javascript_include_tag 'jquery.form.min' %>
```
`application.html.haml` or `application.html.slim`

```erb
= javascript_include_tag 'jquery.form.min'
```

## Usage

##### Add class as `ajax-submit` (or any other class you wish to bind) to the form
```erb
<%= form_for @your_object, html: {class: 'ajax-submit'} do |f| %>
  // other form fields
  <%= f.submit %>
<% end %>
```
##### Add binding for `ajaxSubmit()` in application.js
```javascript
$(function () {
  // your other code

  $(document).on('submit', 'form.ajax-submit', function(e) {
    e.preventDefault(); // prevent native submit
    $(this).ajaxSubmit();
  });
});
```
##### Looking for more steps???
No... That's it! Really!! You are done!!! :smile:  
Now your forms with `ajax-submit` class will get submitted by `ajaxSubmit()`

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/AquisTech/ajax_submit_rails. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
