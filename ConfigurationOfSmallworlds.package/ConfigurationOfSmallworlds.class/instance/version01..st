accessing
version01: spec
	<version: '0.1' imports:#('0.1-baseline')>
	
	spec for: #common do: [
		spec blessing: #release.
		spec
			package: 'Smallworlds' with:'Smallworlds-EricVeltendeMelo.9'
	]