class Article < ActiveRecord::Base
	has_many :comments
	has_many :taggings
	has_many :tags, through: :taggings
	has_attached_file :image

	def tag_list
		self.tags.collect do |tag|
			tag.name
		end.join(", ")
	end
end
