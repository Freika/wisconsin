# cronotab.rb — Crono configuration file
#
# Here you can specify periodic jobs and schedule.
# You can use ActiveJob's jobs from `app/jobs/`
# You can use any class. The only requirement is that
# class should have a method `perform` without arguments.
#
class TestJob
  def perform
    Source.where(approved: true).each { |s| s.parse_feed }
  end
end
#
Crono.perform(TestJob).every 1.minute
#
