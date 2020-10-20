initialization
initialize
	super initialize.
	closedPrefix := '#'.
	regex :=  '([*#]?\w+)\s((\w+\s?)+)((\$\w+\s?)*)((\%\w+\s?)*)'.
	world := SmallWorld new
