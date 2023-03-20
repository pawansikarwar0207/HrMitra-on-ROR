class Document < ApplicationRecord
  DOC_TYPES = ['Marksheet', 'Photo Id', 'Address Proof', 'Personal Id', 'Others'].freeze

  belongs_to :student

  validates :name, :doc_type, presence:true

  has_one_attached :image

end
