instance creation
defaultParser
	^self new
		abbreviations: AbbreviationDictionary defaultDictionary;
		actions: (OrderedCollection new
			add: Action drop;
			add: Action exit;
			add: Action go;
			add: Action inventory;
			add: Action look;
			add: Action lookAt;
			add: Action putOn;
			add: Action say;
			add: Action take;
			yourself);
		setParser