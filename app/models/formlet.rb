class Formlet < ApplicationRecord
	validates :name, presence: true
  	validates :email, presence: true
  	validates :company, presence: true
  	validates :position, presence: true
  	validates :duration, presence: true 
  	validates :challenge, presence: true 
  	validates :motivation, presence: true
  	validates :grounds, presence: true	
  	validates :document, presence: true

  	mount_uploader :document, DocumentUploader
end
