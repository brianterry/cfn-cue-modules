package resourcepolicy

import "strings"

#Properties: {
	// The resource policy to create or update.
	Policy: string & strings.MinRunes(1) & strings.MaxRunes(20480)
	// The Amazon Resource Name (ARN) of the resource for which to create or update the resource policy.
	ResourceArn: string & =~"^arn:[a-z0-9-]+:bedrock-agentcore:[a-z0-9-]*:[0-9]{12}:.+$" & strings.MinRunes(20) & strings.MaxRunes(1011)
}
