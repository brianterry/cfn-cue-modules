package automatedreasoningpolicyversion

import "strings"

#Properties: {
	LastUpdatedDefinitionHash?: #DefinitionHash
	PolicyArn: #PolicyArn
	Tags?: #Tags
}

#Tag: {
	// Tag Key
	Key: string & =~"^[a-zA-Z0-9\\s._:/=+@-]*$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// Tag Value
	Value: string & =~"^[a-zA-Z0-9\\s._:/=+@-]*$" & strings.MinRunes(0) & strings.MaxRunes(256)
}
