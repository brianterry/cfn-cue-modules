package retriever

import "strings"

#Properties: {
	ApplicationId: string & =~"^[a-zA-Z0-9][a-zA-Z0-9-]{35}$" & strings.MinRunes(36) & strings.MaxRunes(36)
	Configuration: #RetrieverConfiguration
	DisplayName: string & =~"^[a-zA-Z0-9][a-zA-Z0-9_-]*$" & strings.MinRunes(1) & strings.MaxRunes(1000)
	RoleArn?: string & =~"^arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}$" & strings.MinRunes(0) & strings.MaxRunes(1284)
	Tags?: [...#Tag]
	Type: #RetrieverType
}

#KendraIndexConfiguration: {
	IndexId: string & =~"^[a-zA-Z0-9][a-zA-Z0-9-]{35}$" & strings.MinRunes(36) & strings.MaxRunes(36)
}

#NativeIndexConfiguration: {
	IndexId: string & =~"^[a-zA-Z0-9][a-zA-Z0-9-]{35}$" & strings.MinRunes(36) & strings.MaxRunes(36)
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
