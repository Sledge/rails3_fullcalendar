class Event < ActiveRecord::Base
  
  scope :in_range, lambda {|start_time, end_time| {:conditions => ["starts_at > ? and ends_at < ?", start_time, end_time] }}
  
  scope :before, lambda {|end_time| {:conditions => ["ends_at < ?", Event.format_date(end_time)] }}
  scope :after, lambda {|start_time| {:conditions => ["starts_at > ?", Event.format_date(start_time)] }}
  
  # need to override the json view to return what full_calendar is expecting.
  # http://arshaw.com/fullcalendar/docs/event_data/Event_Object/
  def as_json(options = {})
    {
      :id => self.id,
      :title => self.title,
      :description => self.description || "",
      :start => "#{self.starts_at.iso8601}",
      :end => "#{self.ends_at.iso8601}",
      :allDay => self.all_day,
      :recurring => false,
      :url => Rails.application.routes.url_helpers.event_path(id)
    }
    
  end
  
  
  def self.format_date(date_time)
    Time.at(date_time.to_i).to_formatted_s(:db)
  end
  
end
