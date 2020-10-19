as yet unclassified
createLocationFrom: matcher
	^ Location 
			name: (matcher subexpression: 2) trim
			description: (matcher subexpression: 3) trim.