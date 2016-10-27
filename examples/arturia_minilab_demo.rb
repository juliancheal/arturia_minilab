require 'arturia_minilab'

# @device = UniMIDI::Input.use(:first)
# state = MicroMIDI::State.new(nil,@device)
# message = MicroMIDI::Instructions::Message.new(state)
# num_messages = 10
#
# num_messages.times do
#   m = @device.gets
#   puts(m.inspect)
# end

minilab = ArturiaMinilab::Device.new

puts minilab.list_devices

minilab.discover(:first, :input)

num_messages = 10

num_messages.times do
  message = minilab.get_input
  puts(message.inspect)
end
