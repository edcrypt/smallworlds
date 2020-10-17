tests-command
testDoDrop
	player pouch: bottle.
	player doDrop: bottle.
	self assert: (player location contents second name) equals: 'bottle'.
	self assert: (player inventory contents isEmpty).