package dataprotectionsettings

import "strings"

#Properties: {
	AdditionalEncryptionContext?: #EncryptionContextMap
	CustomerManagedKey?: string & =~"^arn:[\\w+=\\/,.@-]+:kms:[a-zA-Z0-9\\-]*:[a-zA-Z0-9]{1,12}:key\\/[a-zA-Z0-9-]+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	Description?: string & =~"^[ _\\-\\d\\w]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
	DisplayName?: string & =~"^[ _\\-\\d\\w]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
	InlineRedactionConfiguration?: #InlineRedactionConfiguration
	Tags?: [...#Tag]
}

#CustomPattern: {
	KeywordRegex?: string & =~"^\\/((?:[^\\n])+)\\/([gimsuyvd]{0,8})$" & strings.MinRunes(0) & strings.MaxRunes(300)
	PatternDescription?: string & =~"^[ _\\-\\d\\w]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
	PatternName: string & =~"^[_\\-\\d\\w]+$" & strings.MinRunes(1) & strings.MaxRunes(20)
	PatternRegex: string & =~"^\\/((?:[^\\n])+)\\/([gimsuyvd]{0,8})$" & strings.MinRunes(0) & strings.MaxRunes(300)
}

#InlineRedactionConfiguration: {
	GlobalConfidenceLevel?: number & >=1 & <=3
	GlobalEnforcedUrls?: [...string & =~"^((([a-zA-Z][a-zA-Z0-9+.-]*):\\/\\/(\\*|[\\w%._\\-\\+~#=@]+)?(\\/[^@\\s]*)?(?:\\?([^*\\s]+(?:\\*?)))?)|(\\*|[\\w%._\\-\\+~#=@]+\\.[\\w%._\\-\\+~#=@]+)(?::(\\d{1,5}))?(\\/[^@\\s]*)?(?:\\?([^*\\s]+(?:\\*?)))?|(([a-zA-Z][a-zA-Z0-9+.-]*):(\\/\\/)?\\*))$"]
	GlobalExemptUrls?: [...string & =~"^((([a-zA-Z][a-zA-Z0-9+.-]*):\\/\\/(\\*|[\\w%._\\-\\+~#=@]+)?(\\/[^@\\s]*)?(?:\\?([^*\\s]+(?:\\*?)))?)|(\\*|[\\w%._\\-\\+~#=@]+\\.[\\w%._\\-\\+~#=@]+)(?::(\\d{1,5}))?(\\/[^@\\s]*)?(?:\\?([^*\\s]+(?:\\*?)))?|(([a-zA-Z][a-zA-Z0-9+.-]*):(\\/\\/)?\\*))$"]
	InlineRedactionPatterns: [...#InlineRedactionPattern]
}

#InlineRedactionPattern: {
	BuiltInPatternId?: string & =~"^[_\\-\\d\\w]+$" & strings.MinRunes(1) & strings.MaxRunes(50)
	ConfidenceLevel?: number & >=1 & <=3
	CustomPattern?: #CustomPattern
	EnforcedUrls?: [...string & =~"^((([a-zA-Z][a-zA-Z0-9+.-]*):\\/\\/(\\*|[\\w%._\\-\\+~#=@]+)?(\\/[^@\\s]*)?(?:\\?([^*\\s]+(?:\\*?)))?)|(\\*|[\\w%._\\-\\+~#=@]+\\.[\\w%._\\-\\+~#=@]+)(?::(\\d{1,5}))?(\\/[^@\\s]*)?(?:\\?([^*\\s]+(?:\\*?)))?|(([a-zA-Z][a-zA-Z0-9+.-]*):(\\/\\/)?\\*))$"]
	ExemptUrls?: [...string & =~"^((([a-zA-Z][a-zA-Z0-9+.-]*):\\/\\/(\\*|[\\w%._\\-\\+~#=@]+)?(\\/[^@\\s]*)?(?:\\?([^*\\s]+(?:\\*?)))?)|(\\*|[\\w%._\\-\\+~#=@]+\\.[\\w%._\\-\\+~#=@]+)(?::(\\d{1,5}))?(\\/[^@\\s]*)?(?:\\?([^*\\s]+(?:\\*?)))?|(([a-zA-Z][a-zA-Z0-9+.-]*):(\\/\\/)?\\*))$"]
	RedactionPlaceHolder: #RedactionPlaceHolder
}

#RedactionPlaceHolder: {
	RedactionPlaceHolderText?: string & =~"^[*_\\-\\d\\w]+$" & strings.MinRunes(1) & strings.MaxRunes(20)
	RedactionPlaceHolderType: #RedactionPlaceHolderType
}

#Tag: {
	Key: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MinRunes(0) & strings.MaxRunes(256)
}
