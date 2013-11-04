class Sample < ActiveRecord::Base
	attr_accessible :title, :url

	validates :title, :url, presence: true

	belongs_to :user
end