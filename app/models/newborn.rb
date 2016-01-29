class Newborn < ActiveRecord::Base	
	belongs_to :user
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :gender, presence: true
	validates :birthdate, presence: true
	validates :photo, presence: true
end
