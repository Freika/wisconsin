class Pattern < ActiveRecord::Base
  has_and_belongs_to_many :posts, dependent: :destroy
  validates :name, uniqueness: true
end
