class Developer < ActiveRecord::Base
  has_many :time_entries
  has_secure_password

  def hours_worked
    total_hours = 0.0
    time_entries.each do |t|
      total_hours += t.duration
    end
    return total_hours
  end

end
