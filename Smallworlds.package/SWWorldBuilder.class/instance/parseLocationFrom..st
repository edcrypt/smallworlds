parsing
parseLocationFrom: aString
	| matcher location |
	aString ifNil: [ ^nil ].

	matcher := RxMatcher forString: regex.
	(matcher matches: aString)
		ifTrue: [
			"TODO closed, initial"
			location := self createLocationFrom: matcher.
			
			"TODO multiple items, actors"
			self createItemsFrom: matcher placedAt: location.
			^ location
		]
		ifFalse: [ ^ 'No match' ].
