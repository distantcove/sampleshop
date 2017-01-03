class Message < ApplicationRecord
	validates :title, presence: true
	validates :note, presence: true
	belongs_to :user
end
