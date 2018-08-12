class Blog < ApplicationRecord
	enum status:{draft: 0,published: 1}
 extend FriendlyId
  friendly_id :titles, use: :slugged
end
