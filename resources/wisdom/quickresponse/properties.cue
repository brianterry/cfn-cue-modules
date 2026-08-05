package quickresponse

import "strings"

#Properties: {
	// The Amazon Connect contact channels this quick response applies to.
	Channels?: [...#ChannelType]
	Content: #QuickResponseContentProvider
	// The media type of the quick response content.
	// - Use application/x.quickresponse;format=plain for quick response written in plain text.
	// - Use application/x.quickresponse;format=markdown for quick response written in richtext.
	ContentType?: string & =~"^(application/x\\.quickresponse;format=(plain|markdown))$"
	// The description of the quick response.
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	GroupingConfiguration?: #GroupingConfiguration
	// Whether the quick response is active.
	IsActive?: bool
	// The Amazon Resource Name (ARN) of the knowledge base.
	KnowledgeBaseArn: string & =~"^arn:[a-z-]*?:wisdom:[a-z0-9-]*?:[0-9]{12}:[a-z-]*?/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}(?:/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}){0,2}$"
	// The language code value for the language in which the quick response is written. The supported language codes include de_DE, en_US, es_ES, fr_FR, id_ID, it_IT, ja_JP, ko_KR, pt_BR, zh_CN, zh_TW
	Language?: string & strings.MinRunes(2) & strings.MaxRunes(5)
	// The name of the quick response.
	Name: string & strings.MinRunes(1) & strings.MaxRunes(100)
	// The shortcut key of the quick response. The value should be unique across the knowledge base.
	ShortcutKey?: string & strings.MinRunes(1) & strings.MaxRunes(100)
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#GroupingConfiguration: {
	// The criteria used for grouping Amazon Q in Connect users.
	Criteria: string & strings.MinRunes(1) & strings.MaxRunes(100)
	// The list of values that define different groups of Amazon Q in Connect users.
	Values: [...#GroupingValue]
}

#QuickResponseContentProvider: {
	// The content of the quick response.
	Content?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
}

#QuickResponseContents: {
	Markdown?: #QuickResponseContentProvider
	PlainText?: #QuickResponseContentProvider
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -
	Key: string & =~"^(?!aws:)[a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
