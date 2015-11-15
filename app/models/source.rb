class Source < ActiveRecord::Base
  has_many :posts, dependent: :destroy

  validates :url, uniqueness: true
  validates :name, uniqueness: true

  def parse_feed
    feed = Feedjira::Feed.fetch_and_parse(rss)
    feed.entries.each do |entry|
      post = Post.create(url: entry.url, title: entry.title, \
        content: entry.content, source: self)
    end
  end
end
