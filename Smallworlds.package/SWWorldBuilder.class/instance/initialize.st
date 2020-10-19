initialization
initialize
	super initialize.
	regex :=  '([*#]?\w+)\s((\w+\s?)+)((\$\w+\s?)*)((\%\w+\s?)*)'.
	world := SmallWorld new.