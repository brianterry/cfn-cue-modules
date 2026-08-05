package resourceassociation

import "strings"

#Properties: {
	// The name or the Id of the Application.
	Application: string & =~"\\w+|[a-z0-9]{12}" & strings.MinRunes(1) & strings.MaxRunes(256)
	// The name or the Id of the Resource.
	Resource: string & =~"\\w+|arn:aws[-a-z]*:cloudformation:[a-z]{2}(-gov)?-[a-z]+-\\d:\\d{12}:stack/[a-zA-Z][-A-Za-z0-9]{0,127}/[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}"
	// The type of the CFN Resource for now it's enum CFN_STACK.
	ResourceType: "CFN_STACK"
}
