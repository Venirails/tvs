class Book < ApplicationRecord

	self.per_page = 2
	before_save :merge_names

    #after_destroy :update_log
	def merge_names
     self.name = self.name + " by " + self.author
	end

	def update_log
       logger.error "==================== Alas!One book has been deleted #{self.id} with name #{self.name}==================="
	end
end
