namespace :sources do
  desc "Updates feeds"
  task update: :environment do
    Source.all.each { |s| s.parse_feed }
  end
end
