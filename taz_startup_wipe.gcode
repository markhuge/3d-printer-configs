; Taz 5 pregame wipe
; This makes use of Simplify3d variables. You can hard-code
; the bracketed values to a number if you're not using Simplify3d.
; 
; See Lulzbot Taz 5 (0.5 nozzle).fff in this same repo for the profile I use
; with this code

G28 ; I'm on my wayyyyyy, I'm on my wayeEeEeE 
M218 X0 Y0 T0
M218 X0 Y-52 T1
G1 X298 Y137 Z2 F5000 ; move to purge position
G1 Z0.4 ; set nozzle height

M106 S[fan_speed_pwm] ; set fan speed
M190 S[bed2_temperature] ; bed temp and wait
M109 S[extruder0_temperature] T0 ;  extruder temp and wait

G91 ; Go into relative position mode
G1 X-8.000 F1800 ; move from 298 to 290
G1 E9 F500 ; start purge line
G1 Y-40.0 E12.5 F500 ; end purge line
G90 ; Put things back in absolute positioning
M400 ; wait for purge to complete
G1 Z0.5 F1200 ; lift
