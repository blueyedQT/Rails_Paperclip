class Photo < ActiveRecord::Base
	has_attached_file :image
	validates_attachment_file_name :image, :matches => [/png\Z/, /jpe?g\Z/, /gif\Z/]
end
