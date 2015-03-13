class Developer < ActiveRecord::Base
  has_many :time_entries
  has_secure_password


  def hours_worked
    total_hours = 0.0
    start_week = Time.now.beginning_of_week
    end_week = Time.now.end_of_week
    time_entries.each do |t|
      if start_week..end_week.include?(time.worked_on)
        total_hours += t.duration
      end
    end
    return total_hours
  end

end
