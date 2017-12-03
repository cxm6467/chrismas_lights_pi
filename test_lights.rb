require 'rpi_gpio'
RPi::GPIO.set_numbering :board
RPi::GPIO.set_warnings(false)

## Setup
PINS = [40, 11, 13, 15, 29, 31, 33, 35]	
PINS.each do |pin|	
	RPi::GPIO.setup pin, :as => :output
	RPi::GPIO.set_low pin	
end
##  Output
3.times do
	PINS.each do |pin|
		puts "Turning pin:  #{pin} on"
		RPi::GPIO.set_high pin
		sleep(0.5)
		puts "Turning pin:  #{pin} off"
		RPi::GPIO.set_low pin
	end	
end
puts "Cleaning up" 
RPi::GPIO.reset

