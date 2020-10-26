testing
containsItemNamed: aString 
	^ (contents findFirst: [ :item | item name = aString ]) ~= 0