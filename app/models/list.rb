class List < ApplicationRecord
  # @name
  # @style

  belongs_to :user

  validates :name, presence: true, uniqueness: true
  validates :style, presence: true

  STYLE = %w[classic rock pop rap electro autres...]
end
