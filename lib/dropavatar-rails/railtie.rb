module Dropavatar
  module Rails
    class Railtie < ::Rails::Railtie
      initializer "dropavatar-rails.include_helpers" do
        ActionView::Base.send :include, Dropavatar::Rails::ViewHelpers
      end
    end
  end
end
