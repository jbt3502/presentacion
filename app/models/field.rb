class Field < ApplicationRecord
  belongs_to :local
  has_attached_file :cover, styles: { medium: "1280x720", thumb: "800x600", mini: "80x200" }
  validates_attachment_content_type :cover, content_type: /\Aimage\/.*\z/
end
