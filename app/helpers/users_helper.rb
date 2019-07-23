module UsersHelper

  def attending_event?(event)
    attending = current_user.attended_events.find_by(id: event.id)
    !attending.nil?
  end

end
