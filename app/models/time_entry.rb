class TimeEntry < ActiveRecord::Base
  belongs_to :developer
  belongs_to :project
  validates :developer, presence: true
  validates :project, presence: true

  def time_entry
    total_time = 0.0
    time_entries.each do |t|
      total_hours += t.duration
    end
    return total_hours
  end

end
