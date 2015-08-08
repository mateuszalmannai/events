class Event < ActiveRecord::Base
  def free?
    price.blank? || price.zero?
  end

  # class level method is defined on 'self'
  def self.upcoming
    # the event object, i.e. the Event class object is the
    # implicit receiver of this method 
    where("starts_at >= ?", Time.now).order("starts_at")
  end
end
