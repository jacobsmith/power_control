require 'libdevinput'

dev = DevInput.new "/dev/input/event0"
dev.each do |event|
	if event.value == 1 # 1 if pressed, 0 if released
		case event.code
		when 104
			puts 'left'
			pressed('left')
		when 109
			puts 'right'
			pressed('right')
		when 48
			puts 'up'
			pressed('up')	
		when 1, 63
			puts 'down'
			pressed('down')
		end
	end
end
