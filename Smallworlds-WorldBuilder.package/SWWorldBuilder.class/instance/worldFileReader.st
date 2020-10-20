as yet unclassified
worldFileReader
	"TODO make testable"
	^ (NeoCSVReader on: fileLocation asFileReference readStream)
			separator: Character tab;
			yourself
