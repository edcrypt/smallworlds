tests
testParseLocationFrom
	self assert: (builder parseLocationFrom: 'name A Place') name equals: 'name'.
	self assert: (builder parseLocationFrom: 'name A Place') description trim equals: 'A Place'.

	self assert: (builder parseLocationFrom: '#closed Closed connection') name equals: 'closed'.
	self assert: (builder parseLocationFrom: '#closed Closed connection') closedDescription trim equals: 'Closed connection'.

	self assert: (builder parseLocationFrom: 'other Another Place $anItem') name equals: 'other'.
	self assert: (builder parseLocationFrom: 'other Another Place $anItem') description trim equals: 'Another Place
	
	There is a anItem here.'.
	
	self assert: (builder parseLocationFrom: 'other Another Place $anItem $another') name equals: 'other'.
	self assert: (builder parseLocationFrom: 'other Another Place $anItem $another') description trim equals: 'Another Place
	
	There is a anItem and another here.'.
	
	self assert: (builder parseLocationFrom: 'other Another Place %Person') name equals: 'other'.
	self assert: (builder parseLocationFrom: 'other Another Place %Person') description trim equals: 'Another Place
	
	Person is here'.
	
	self assert: (builder parseLocationFrom: 'other Another Place $anItem %Person') name equals: 'other'.
	self assert: (builder parseLocationFrom: 'other Another Place $anItem %Person') description trim equals: 'Another Place
	
	There is a anItem here.
	Person is here'.
	
	self assert: (builder parseLocationFrom: 'other Another Place $anItem $another %Person') name equals: 'other'.
	self assert: (builder parseLocationFrom: 'other Another Place $anItem $another %Person') description trim equals: 'Another Place
	
	There is a anItem here.
	Person is here'.

	"XXX test initial position"
	self assert: (builder parseLocationFrom: '*room Some room') name equals: 'room'.
	self assert: (builder parseLocationFrom: '*room Some room') closedDescription trim equals: 'Some room'.
	
	"ERRORS"
	self assert: (builder parseLocationFrom: '%%%%%') equals: 'no match'.
	