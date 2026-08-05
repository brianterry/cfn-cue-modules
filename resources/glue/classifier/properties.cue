package classifier

#Properties: {
	CsvClassifier?: #CsvClassifier
	GrokClassifier?: #GrokClassifier
	JsonClassifier?: #JsonClassifier
	XMLClassifier?: #XMLClassifier
}

#CsvClassifier: {
	AllowSingleColumn?: bool
	ContainsCustomDatatype?: [...string]
	ContainsHeader?: string
	CustomDatatypeConfigured?: bool
	Delimiter?: string
	DisableValueTrimming?: bool
	Header?: [...string]
	Name?: string
	QuoteSymbol?: string
}

#GrokClassifier: {
	Classification: string
	CustomPatterns?: string
	GrokPattern: string
	Name?: string
}

#JsonClassifier: {
	JsonPath: string
	Name?: string
}

#XMLClassifier: {
	Classification: string
	Name?: string
	RowTag: string
}
