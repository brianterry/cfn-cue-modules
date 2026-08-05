package transformer

import "strings"

#Properties: {
	// Existing log group that you want to associate with this transformer.
	LogGroupIdentifier: string & =~"[\\w#+=/:,.@-]*" & strings.MinRunes(1) & strings.MaxRunes(2048)
	// List of processors in a transformer
	TransformerConfig: [...#Processor]
}

#AddKeyEntry: {
	Key: #NonEmptyAndMaxLengthString
	OverwriteIfExists?: bool
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}

#Column: #NonEmptyAndMaxLengthString

#CopyValueEntry: {
	OverwriteIfExists?: bool
	Source: #NonEmptyString
	Target: #NonEmptyAndMaxLengthString
}

#EventSource: "CloudTrail" | "Route53Resolver" | "VPCFlow" | "EKSAudit" | "AWSWAF"

#MappingVersion: string & =~"^v\\d+\\.\\d+(\\.\\d+)?$" & strings.MinRunes(1) & strings.MaxRunes(10)

#MatchPattern: #NonEmptyString

#MaxLengthString: string & strings.MaxRunes(128)

#MoveKeyEntry: {
	OverwriteIfExists?: bool
	Source: #NonEmptyString
	Target: #NonEmptyString
}

#NonEmptyAndMaxLengthString: string & =~"^.*[a-zA-Z0-9]+.*$" & strings.MaxRunes(128)

#NonEmptyString: string & =~"^.*[a-zA-Z0-9]+.*$"

#OcsfVersion: "V1.1" | "V1.5"

#ParseCloudfront: {
	Source?: #NonEmptyString
}

#ParsePostgres: {
	Source?: #NonEmptyString
}

#ParseRoute53: {
	Source?: #NonEmptyString
}

#ParseToOCSF: {
	EventSource: #EventSource
	MappingVersion?: #MappingVersion
	OcsfVersion: #OcsfVersion
	Source?: #NonEmptyString
}

#ParseVPC: {
	Source?: #NonEmptyString
}

#ParseWAF: {
	Source?: #NonEmptyString
}

#Processor: {
	AddKeys?: {
		Entries: [...#AddKeyEntry]
	}
	CopyValue?: {
		Entries: [...#CopyValueEntry]
	}
	Csv?: {
		Columns?: [...#Column]
		Delimiter?: string & strings.MaxRunes(2)
		QuoteCharacter?: string & strings.MaxRunes(1)
		Source?: string
	}
	DateTimeConverter?: {
		Locale?: string
		MatchPatterns: [...#MatchPattern]
		Source: #NonEmptyString
		SourceTimezone?: string
		Target: #NonEmptyAndMaxLengthString
		TargetFormat?: string
		TargetTimezone?: string
	}
	DeleteKeys?: {
		WithKeys: [...#WithKey]
	}
	Grok?: {
		Match: string & strings.MaxRunes(512)
		Source?: #NonEmptyString
	}
	ListToMap?: {
		Flatten?: bool
		FlattenedElement?: "first" | "last"
		Key: #NonEmptyString
		Source: #NonEmptyString
		Target?: #NonEmptyAndMaxLengthString
		ValueKey?: #NonEmptyString
	}
	LowerCaseString?: {
		WithKeys: [...#WithKey]
	}
	MoveKeys?: {
		Entries: [...#MoveKeyEntry]
	}
	ParseCloudfront?: #ParseCloudfront
	ParseJSON?: {
		Destination?: #NonEmptyAndMaxLengthString
		Source?: string
	}
	ParseKeyValue?: {
		Destination?: #NonEmptyString
		FieldDelimiter?: string
		KeyPrefix?: #NonEmptyString
		KeyValueDelimiter?: string
		NonMatchValue?: #NonEmptyString
		OverwriteIfExists?: bool
		Source?: #NonEmptyString
	}
	ParsePostgres?: #ParsePostgres
	ParseRoute53?: #ParseRoute53
	ParseToOCSF?: #ParseToOCSF
	ParseVPC?: #ParseVPC
	ParseWAF?: #ParseWAF
	RenameKeys?: {
		Entries: [...#RenameKeyEntry]
	}
	SplitString?: {
		Entries: [...#SplitStringEntry]
	}
	SubstituteString?: {
		Entries: [...#SubstituteStringEntry]
	}
	TrimString?: {
		WithKeys: [...#WithKey]
	}
	TypeConverter?: {
		Entries: [...#TypeConverterEntry]
	}
	UpperCaseString?: {
		WithKeys: [...#WithKey]
	}
}

#RenameKeyEntry: {
	Key: #NonEmptyString
	OverwriteIfExists?: bool
	RenameTo: #NonEmptyString
}

#SplitStringEntry: {
	Delimiter: string & strings.MaxRunes(128)
	Source: #NonEmptyString
}

#SubstituteStringEntry: {
	From: #MaxLengthString
	Source: #NonEmptyString
	To: #MaxLengthString
}

#TypeConverterEntry: {
	Key: #NonEmptyString
	Type: "boolean" | "integer" | "double" | "string"
}

#WithKey: string & strings.MinRunes(1) & strings.MaxRunes(128)
