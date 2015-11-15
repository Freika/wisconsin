class Post < ActiveRecord::Base
  belongs_to :source
  has_and_belongs_to_many :patterns

  validates :url, uniqueness: { scope: :source_id }
end
