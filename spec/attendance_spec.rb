require 'rails_helper'

RSpec.describe Attendance, type: :model do
  context 'when a new attendance is create' do
    it 'should be reject when there are no attributes given' do
      att = Attendance.new
      expect(att.valid?).to eql(false)
    end
  end
end
