require 'rails_helper'

RSpec.describe Attendance, type: :model do
  context 'when a new attendance is create' do
    it 'should be rejected when there are no attributes given' do
      att = Attendance.new
      expect(att.valid?).to eql(false)
    end
  end

  context 'in terms of association, for every attendance triggered ' do
    it 'belongs to a event called as attended_event' do
      assc = Attendance.reflect_on_association(:attended_event)
      expect(assc.macro).to eq :belongs_to
    end

    it 'belongs to a user called as attendee' do
      assc = Attendance.reflect_on_association(:attendee)
      expect(assc.macro).to eq :belongs_to
    end
  end
end
