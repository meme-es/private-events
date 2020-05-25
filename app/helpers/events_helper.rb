module EventsHelper
  def upcoming_event?(date)
    return false if date < Date.today

    true
  end
end
