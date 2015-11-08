module Traffic

data light =
 green |
 amber |
 red

--Functions
change: light -> light
change green = amber
change amber = red
change red = green
