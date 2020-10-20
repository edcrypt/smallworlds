as yet unclassified
createLocationFrom: matcher
	| name description|
	name := (matcher subexpression: 2) trim.
	description := (matcher subexpression: 3) trim.
	(name beginsWith: closedPrefix) ifTrue: [ 
		^ ClosedConnection 
			name: (name withoutPrefix: closedPrefix)
			closedDescription: description ].
	^ Location 
			name: name
			description: description.