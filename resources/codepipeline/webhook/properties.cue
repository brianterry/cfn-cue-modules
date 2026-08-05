package webhook

import "strings"

#Properties: {
	// Supported options are GITHUB_HMAC, IP, and UNAUTHENTICATED.
	Authentication: "GITHUB_HMAC" | "IP" | "UNAUTHENTICATED"
	// Properties that configure the authentication applied to incoming webhook trigger requests
	AuthenticationConfiguration: #WebhookAuthConfiguration
	// A list of rules applied to the body/payload sent in the POST request to a webhook URL
	Filters: [...#WebhookFilterRule]
	// The name of the webhook
	Name?: string & =~"[A-Za-z0-9.@\\-_]+" & strings.MinRunes(1) & strings.MaxRunes(100)
	// Configures a connection between the webhook that was created and the external tool with events to be detected.
	RegisterWithThirdParty?: bool
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
	// The name of the action in a pipeline you want to connect to the webhook.
	TargetAction: string & =~"[A-Za-z0-9.@\\-_]+" & strings.MinRunes(1) & strings.MaxRunes(100)
	// The name of the pipeline you want to connect to the webhook.
	TargetPipeline: string & =~"[A-Za-z0-9.@\\-_]+" & strings.MinRunes(1) & strings.MaxRunes(100)
	// The version number of the pipeline to be connected to the trigger request.
	TargetPipelineVersion?: int
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#WebhookAuthConfiguration: {
	// The property used to configure acceptance of webhooks in an IP address range. For IP, only the AllowedIPRange property must be set. This property must be set to a valid CIDR range.
	AllowedIPRange?: string & strings.MinRunes(1) & strings.MaxRunes(100)
	// The property used to configure GitHub authentication. For GITHUB_HMAC, only the SecretToken property must be set.
	SecretToken?: string & strings.MinRunes(1) & strings.MaxRunes(100)
}

#WebhookFilterRule: {
	// A JsonPath expression that is applied to the body/payload of the webhook. The value selected by the JsonPath expression must match the value specified in the MatchEquals field. Otherwise, the request is ignored.
	JsonPath: string & strings.MinRunes(1) & strings.MaxRunes(150)
	// The value selected by the JsonPath expression must match what is supplied in the MatchEquals field. Otherwise, the request is ignored.
	MatchEquals?: string & strings.MinRunes(1) & strings.MaxRunes(150)
}
