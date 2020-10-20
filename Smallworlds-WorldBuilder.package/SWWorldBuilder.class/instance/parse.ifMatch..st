parsing
parse: aString ifMatch: matchBlock
	self parse: aString ifMatch: matchBlock ifMismatch: [  ]