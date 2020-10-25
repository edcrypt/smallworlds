running
setUp
	super setUp.

	builder := SWWorldBuilder new.
	builder parse: 'test Some Thing' ifMatch: [ :matcher |
		location := builder createLocationFrom: matcher ]