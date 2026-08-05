package service

import "strings"

#Properties: {
	ApplicationIdentifier: string & =~"^app-([0-9A-Za-z]{10}$)" & strings.MinRunes(14) & strings.MaxRunes(14)
	Description?: string & =~"^[a-zA-Z0-9-_\\s\\.\\!\\*\\#\\@\\']+$" & strings.MinRunes(1) & strings.MaxRunes(256)
	EndpointType: #ServiceEndpointType
	EnvironmentIdentifier: string & =~"^env-([0-9A-Za-z]{10}$)" & strings.MinRunes(14) & strings.MaxRunes(14)
	LambdaEndpoint?: #LambdaEndpointInput
	Name: string & =~"^(?!svc-)[a-zA-Z0-9]+[a-zA-Z0-9-_ ]+$" & strings.MinRunes(3) & strings.MaxRunes(63)
	// Metadata that you can assign to help organize the frameworks that you create. Each tag is a key-value pair.
	Tags?: [...#Tag]
	UrlEndpoint?: #UrlEndpointInput
	VpcId?: string & =~"^vpc-[-a-f0-9]{8}([-a-f0-9]{9})?$" & strings.MinRunes(12) & strings.MaxRunes(21)
}

#LambdaEndpointInput: {
	Arn: string & =~"^arn:(aws[a-zA-Z-]*)?:lambda:[a-z]{2}((-gov)|(-iso(b?)))?-[a-z]+-\\d{1}:\\d{12}:function:[a-zA-Z0-9-_]+(:(\\$LATEST|[a-zA-Z0-9-_]+))?$" & strings.MinRunes(1) & strings.MaxRunes(2048)
}

#Tag: {
	// A string used to identify this tag
	Key: string & =~"^(?!aws:).+" & strings.MinRunes(1) & strings.MaxRunes(128)
	// A string containing the value for the tag
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#UrlEndpointInput: {
	HealthUrl?: string & =~"^https?://[-a-zA-Z0-9+\\x38@#/%?=~_|!:,.;]*[-a-zA-Z0-9+\\x38@#/%=~_|]$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	Url: string & =~"^https?://[-a-zA-Z0-9+\\x38@#/%?=~_|!:,.;]*[-a-zA-Z0-9+\\x38@#/%=~_|]$" & strings.MinRunes(1) & strings.MaxRunes(2048)
}
