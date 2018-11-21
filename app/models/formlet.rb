class Formlet < ApplicationRecord
	validates :name, presence: true
  	validates :email, presence: true
  	validates :document, presence: true

  	mount_uploader :document, DocumentUploader
end
