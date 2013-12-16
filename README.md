Overview
============

The dropavatar-rails gem aims to provide a way for images to be manipulated (resized and cropped) client side and then uploaded via XHR post request as base64 data.
Primarily this is done to reduce load on a Rails server by centralling processing images with things like Carrierwave or Paperclip.


Usage
============

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

Compatibility
============
We test this gem in our project primarily using Chrome and Safari on Mac
We use Ruby 1.9.3 and Rails 3.2
Primarily we aim to use multi-browser compatible code but internally we don't test for complete compatibility (feel free to report bugs or make suggestions on improvements)


Contributing
============
If you want to contribute to the project please do:

1. Fork the project
2. Create a branch on your fork and make your changes
3. Request a pull request with your changes

*Any contributions to this project will be considered as licensed as MIT and the right to define the license for all contributed code as transferred to Niko Roberts*

Authors
============
The primary author of this library is Niko Roberts, but it is also maintained by other developers within Tasboa.

This project is part of a larger Tasboa project and it was built because we found uploading raw images through standard multipart forms was inefficient and the additional load on the server for cropping the images was an inefficient use of the powers of the web.


Versioning
============
This library aims to adhere to [Semantic Versioning 2.0.0][semver]. Violations
of this scheme should be reported as bugs. Specifically, if a minor or patch
version is released that breaks backward compatibility, that version should be
immediately yanked and/or a new version should be immediately released that
restores compatibility. Breaking changes to the public API will only be
introduced with new major versions. As a result of this policy, you can (and
should) specify a dependency on this gem using the [Pessimistic Version
Constraint][pvc] with two digits of precision. For example:

    'dropavatar-rails', '~> 1.0'
[semver]: http://semver.org/
