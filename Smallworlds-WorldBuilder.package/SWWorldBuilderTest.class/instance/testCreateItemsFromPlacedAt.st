tests
testCreateItemsFromPlacedAt
	"check if a string makes itens with those $names end up on a location"
	builder parse: 'foo Foo Bar $anItem $another' ifMatch: [ :matcher |
		builder createItemsFrom: matcher placedAt: location.
		self assert: (location containsItemNamed: 'anItem').
		self assert: (location containsItemNamed: 'another') ]