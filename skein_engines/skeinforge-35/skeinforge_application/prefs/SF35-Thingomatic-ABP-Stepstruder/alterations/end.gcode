(**** Beginning of end.txt ****)
(This file is for a MakerBot Thing-O-Matic)
(with an automated build platform and a MK6 stepstruder)
(This file has been sliced using Skeinforge 35)
(*** begin settings ****)
M109 S75 T0 (set heated-build-platform temperature)
(**** end settings ****)
(**** begin move to cooling position ****)
G1 X0.0 F3300.0       (move to cooling position)
G1 X0.0 Y55.0 F3300.0 (move to cooling position)
(**** end move to cooling position ****)
(**** begin filament reversal ****)
M108 R1.98 (set extruder speed)
M102 (Extruder on, reverse)
G04 P2000 (Wait t/1000 seconds)
M103 (Extruder off)
(**** end filament reversal ****)
(**** begin eject ****)
M6 T0 (wait for toolhead parts (nozzle, HBP, etc) to reach temperature)
G1 X0.0 F3300.0       (move to ejection position)
G1 X0.0 Y75.0 F3300.0 (move to ejection position)
M106 (conveyor on)
G04 P14000 (wait t/1000 seconds)
M107 (conveyor off)
G1 X0.0 F3300.0       (move to cooling position)
G1 X0.0 Y55.0 F3300.0 (move to cooling position)
M18 (Turn off steppers)
(**** end eject ****)
(**** begin cool for safety ****)
M104 S0 T0 (set extruder temperature)
M109 S0 T0 (set heated-build-platform temperature)
(**** end cool for safety ****)
(**** end of end.txt ****)
