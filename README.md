# dropavatar-rails

This gem aims to provide a way for images to be manipulated (resized and cropped) client side and then uploaded via XHR post request as base64 data.
Primarily this is done to reduce load on a Rails server by centralling processing images with things like Carrierwave or Paperclip.

## Usage

### Gem install

Include the Gem in your gemfile

    gem 'dropavatar-rails'

Then include the css and js in your application.{js,css} in your Rails application

application.css:

    *= require dropavatar

application.js:

    //= require dropavatar

after a `bundle install` you should be good to start changing views

### Views

Adding the class "dropavater" to a file input (as below) will mean the following:
* a new hidden field is added to the parent form which will contain the Base64 version of the image
* the actual file input will be moved out of the form so it doesn't get submitted as part of the form (causing the remote ajax call not to work anymore)
* when an image is dropped onto the body of the page it will put the image as a string in the hidden field


```haml
  = semantic_form_for user, :remote=>true do |f|
    = f.input :photo, :as=>"file", :class=>"dropavatar"
    #...
```


Adding an image with the class "dropavater-preview" will add an image next to the

```haml
  = semantic_form_for user, :remote=>true do |f|
    = f.input :photo, :as=>"file", :class=>"dropavatar", :label=>image_tag(f.object.photo.url, :class=>"dropavatar-preview")
    #...
```

## Note on Patches/Pull Requests

- Fork the project.
- Make your feature addition or bug fix
- Commit
- Send a pull request
