describe Robot do
  describe '#valid_walk?' do
    context 'when valid' do
      it 'should return true' do
        robot = Robot.new
        expect(robot.valid_walk?("NS")).to be true
      end
    end
  end
end
