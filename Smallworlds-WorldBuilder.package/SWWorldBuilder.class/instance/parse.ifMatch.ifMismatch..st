parsing
parse: aString ifMatch: matchBlock ifMismatch: mismatchBlock
	| matcher |
	matcher := RxMatcher forString: regex.
	(matcher matches: aString)
		ifTrue: [ matchBlock value: matcher ]
		ifFalse: [ mismatchBlock value: matcher ]