tests-action scope
testHeldItems
	| items |
	player pouch: pencil.
	box add: bottle.
	player location add: box.
	items := player heldItems.
	self assert: items size equals: 1.
	self assert: items first equals: pencil