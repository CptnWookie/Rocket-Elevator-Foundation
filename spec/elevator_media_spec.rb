require 'elevator_media'

describe ElevatorMedia do
    describe '#getContent' do
        it 'General Kenobi' do
            expect(ElevatorMedia::Streamer.new.getContent)
        end
    end
end
