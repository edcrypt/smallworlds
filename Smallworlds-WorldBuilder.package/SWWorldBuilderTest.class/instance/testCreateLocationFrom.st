tests
testCreateLocationFrom
	builder parse: 'test Some Thing' ifMatch: [ :matcher |
		| loc |
		loc := builder createLocationFrom: matcher.
		self assert: loc name equals: 'test'.
		self assert: loc description trim equals: 'Some Thing' ].

	builder parse: '#test Some Thing' ifMatch: [ :matcher |
		| loc |
		loc := builder createLocationFrom: matcher.
		self assert: loc name equals: 'test'.
		self assert: loc closedDescription equals: 'Some Thing' ].

	"TODO check for player"
	builder parse: '*test Some Thing' ifMatch: [ :matcher |
		self assert: (builder createLocationFrom: matcher) name equals: 'test'].

