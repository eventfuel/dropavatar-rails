module Dropavatar::Rails
  module ViewHelpers
    def dropavatar(height, width, field_name="photo", url=nil, show_preview=true, drop_spot="body")
      if show_preview
        label_tag field_name, "", :class=>"dropavatar-preview"
      end
      file_field_tag field_name, url, :class=>"dropavatar", :data=>{width=>width, :height=>height, :field_name=>field_name, :drop_spot=>drop_spot}
    end
  end
end
