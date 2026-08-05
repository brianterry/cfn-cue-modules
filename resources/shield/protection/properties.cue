package protection

import "strings"

#Properties: {
	ApplicationLayerAutomaticResponseConfiguration?: #ApplicationLayerAutomaticResponseConfiguration
	// The Amazon Resource Names (ARNs) of the health check to associate with the protection.
	HealthCheckArns?: [...string & strings.MinRunes(1) & strings.MaxRunes(2048)]
	// Friendly name for the Protection.
	Name: string & =~"[ a-zA-Z0-9_\\.\\-]*" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The ARN (Amazon Resource Name) of the resource to be protected.
	ResourceArn: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	// One or more tag key-value pairs for the Protection object.
	Tags?: [...#Tag]
}

#ApplicationLayerAutomaticResponseConfiguration: {
	// Specifies the action setting that Shield Advanced should use in the AWS WAF rules that it creates on behalf of the protected resource in response to DDoS attacks. You specify this as part of the configuration for the automatic application layer DDoS mitigation feature, when you enable or update automatic mitigation. Shield Advanced creates the AWS WAF rules in a Shield Advanced-managed rule group, inside the web ACL that you have associated with the resource.
	Action: {
		Count?: {...}
	} | {
		Block?: {...}
	}
	// Indicates whether automatic application layer DDoS mitigation is enabled for the protection.
	Status: "ENABLED" | "DISABLED"
}

#Tag: {
	// Part of the key:value pair that defines a tag. You can use a tag key to describe a category of information, such as "customer." Tag keys are case-sensitive.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// Part of the key:value pair that defines a tag. You can use a tag value to describe a specific value within a category, such as "companyA" or "companyB." Tag values are case-sensitive.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
