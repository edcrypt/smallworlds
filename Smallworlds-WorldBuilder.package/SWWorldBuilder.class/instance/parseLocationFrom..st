parsing
parseLocationFrom: aString
	| location |
	aString ifNil: [ ^nil ].

	self parse: aString ifMatch: [ :matcher |
			"TODO closed, initial"
			location := self createLocationFrom: matcher.
			
			"TODO multiple items, actors"
			self createItemsFrom: matcher placedAt: location.
			^ location
		]
		ifMismatch: [ ^ 'No match' ].
