parsing
parseWorldFile
	^ self worldFileReader upToEnd
		collect: [ :row |
			row collect: [ :each |
				self parseLocationFrom: each ] ]