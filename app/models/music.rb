class Music < ApplicationRecord
  has_many :marks, dependent: :destroy
  has_many :lists, through: :marks

  validates :title, presence: true
  validates :author, presence: true
end
