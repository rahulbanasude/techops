class Account < ActiveRecord::Base
  has_attached_file :bill, styles: {thumbnail: "60x60#"}
 validates_attachment_content_type :bill, content_type: /\Aimage\/.*\z/

end
