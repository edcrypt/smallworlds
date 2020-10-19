action
defaultText: aMessage
	world parse: aMessage text.
	aMessage send: (String crlf join: (world log))