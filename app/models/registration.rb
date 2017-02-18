class Registration < ActiveRecord::Base
  has_attached_file :document, styles: {thumbnail: "60x60#"}
 validates_attachment :document, content_type: { content_type: "application/pdf" }
 validates_attachment_file_name :document, matches: [/pdf\z/, /jpe?g\z/]
 do_not_validate_attachment_file_type :document
end
