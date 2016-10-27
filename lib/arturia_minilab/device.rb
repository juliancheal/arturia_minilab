require "arturia_minilab/midi_generator"

module ArturiaMinilab
    class Device

    def discover(args = nil, direction = :output)
      MidiGenerator.discover(args, direction)
    end

    def list_devices
      MidiGenerator.list_devices
    end

    def get_input
      MidiGenerator.get_input
    end
  end
end
