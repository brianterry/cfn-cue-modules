package protectiongroup

import "strings"

#Properties: {
	// Defines how AWS Shield combines resource data for the group in order to detect, mitigate, and report events.
* Sum - Use the total traffic across the group. This is a good choice for most cases. Examples include Elastic IP addresses for EC2 instances that scale manually or automatically.
* Mean - Use the average of the traffic across the group. This is a good choice for resources that share traffic uniformly. Examples include accelerators and load balancers.
* Max - Use the highest traffic from each resource. This is useful for resources that don't share traffic and for resources that share that traffic in a non-uniform way. Examples include Amazon CloudFront and origin resources for CloudFront distributions.
	Aggregation: "SUM" | "MEAN" | "MAX"
	// The Amazon Resource Names (ARNs) of the resources to include in the protection group. You must set this when you set `Pattern` to `ARBITRARY` and you must not set it for any other `Pattern` setting.
	Members?: [...string & strings.MinRunes(1) & strings.MaxRunes(2048)]
	// The criteria to use to choose the protected resources for inclusion in the group. You can include all resources that have protections, provide a list of resource Amazon Resource Names (ARNs), or include all resources of a specified resource type.
	Pattern: "ALL" | "ARBITRARY" | "BY_RESOURCE_TYPE"
	// The name of the protection group. You use this to identify the protection group in lists and to manage the protection group, for example to update, delete, or describe it.
	ProtectionGroupId: string & =~"[a-zA-Z0-9\\-]*" & strings.MinRunes(1) & strings.MaxRunes(36)
	// The resource type to include in the protection group. All protected resources of this type are included in the protection group. Newly protected resources of this type are automatically added to the group. You must set this when you set `Pattern` to `BY_RESOURCE_TYPE` and you must not set it for any other `Pattern` setting.
	ResourceType?: "CLOUDFRONT_DISTRIBUTION" | "ROUTE_53_HOSTED_ZONE" | "ELASTIC_IP_ALLOCATION" | "CLASSIC_LOAD_BALANCER" | "APPLICATION_LOAD_BALANCER" | "GLOBAL_ACCELERATOR"
	// One or more tag key-value pairs for the Protection object.
	Tags?: [...#Tag]
}

#Tag: {
	// Part of the key:value pair that defines a tag. You can use a tag key to describe a category of information, such as "customer." Tag keys are case-sensitive.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// Part of the key:value pair that defines a tag. You can use a tag value to describe a specific value within a category, such as "companyA" or "companyB." Tag values are case-sensitive.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
