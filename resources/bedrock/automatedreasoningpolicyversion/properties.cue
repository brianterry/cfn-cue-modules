package automatedreasoningpolicyversion

import "strings"

#Properties: {
	LastUpdatedDefinitionHash?: #DefinitionHash
	PolicyArn: #PolicyArn
	Tags?: #Tags
}

#CreatedAt: string

#DefinitionHash: string & =~"^[0-9a-z]{128}$" & strings.MinRunes(128) & strings.MaxRunes(128)

#Description: string & =~"^[\\s\\S]+$" & strings.MaxRunes(1024)

#Name: string & =~"^[0-9a-zA-Z-_ ]+$" & strings.MinRunes(1) & strings.MaxRunes(256)

#PolicyArn: string & =~"^arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:automated-reasoning-policy\\/[a-z0-9]{12}$" & strings.MinRunes(1) & strings.MaxRunes(2048)

#PolicyId: string & =~"^[a-z0-9]{12}$" & strings.MinRunes(1) & strings.MaxRunes(2048)

#Tag: {
	// Tag Key
	Key: string & =~"^[a-zA-Z0-9\\s._:/=+@-]*$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// Tag Value
	Value: string & =~"^[a-zA-Z0-9\\s._:/=+@-]*$" & strings.MinRunes(0) & strings.MaxRunes(256)
}

#Tags: [...#Tag]

#UpdatedAt: string

#Version: string & =~"^([1-9][0-9]{0,11})$" & strings.MaxRunes(12)
