package continuousdeploymentpolicy

import "strings"

#Properties: {
	// Contains the configuration for a continuous deployment policy.
	ContinuousDeploymentPolicyConfig: #ContinuousDeploymentPolicyConfig
}

#ContinuousDeploymentPolicyConfig: {
	// A Boolean that indicates whether this continuous deployment policy is enabled (in effect). When this value is ``true``, this policy is enabled and in effect. When this value is ``false``, this policy is not enabled and has no effect.
	Enabled: bool
	// This configuration determines which HTTP requests are sent to the staging distribution. If the HTTP request contains a header and value that matches what you specify here, the request is sent to the staging distribution. Otherwise the request is sent to the primary distribution.
	SingleHeaderPolicyConfig?: {
		Header: string & strings.MinRunes(1) & strings.MaxRunes(256)
		Value: string & strings.MinRunes(1) & strings.MaxRunes(1783)
	}
	// This configuration determines the percentage of HTTP requests that are sent to the staging distribution.
	SingleWeightPolicyConfig?: {
		SessionStickinessConfig?: #SessionStickinessConfig
		Weight: number & >=0 & <=1
	}
	// The CloudFront domain name of the staging distribution. For example: ``d111111abcdef8.cloudfront.net``.
	StagingDistributionDnsNames: [...string]
	// Contains the parameters for routing production traffic from your primary to staging distributions.
	TrafficConfig?: #TrafficConfig
	// The type of traffic configuration.
	Type?: "SingleWeight" | "SingleHeader"
}

#SessionStickinessConfig: {
	// The amount of time after which you want sessions to cease if no requests are received. Allowed values are 300–3600 seconds (5–60 minutes).
	IdleTTL: int & >=300 & <=3600
	// The maximum amount of time to consider requests from the viewer as being part of the same session. Allowed values are 300–3600 seconds (5–60 minutes).
	MaximumTTL: int & >=300 & <=3600
}

#SingleHeaderConfig: {
	// The request header name that you want CloudFront to send to your staging distribution. The header must contain the prefix ``aws-cf-cd-``.
	Header: string & strings.MinRunes(1) & strings.MaxRunes(256)
	// The request header value.
	Value: string & strings.MinRunes(1) & strings.MaxRunes(1783)
}

#SingleWeightConfig: {
	// Session stickiness provides the ability to define multiple requests from a single viewer as a single session. This prevents the potentially inconsistent experience of sending some of a given user's requests to your staging distribution, while others are sent to your primary distribution. Define the session duration using TTL values.
	SessionStickinessConfig?: #SessionStickinessConfig
	// The percentage of traffic to send to a staging distribution, expressed as a decimal number between 0 and 0.15. For example, a value of 0.10 means 10% of traffic is sent to the staging distribution.
	Weight: number & >=0 & <=1
}

#TrafficConfig: {
	// Determines which HTTP requests are sent to the staging distribution.
	SingleHeaderConfig?: #SingleHeaderConfig
	// Contains the percentage of traffic to send to the staging distribution.
	SingleWeightConfig?: #SingleWeightConfig
	// The type of traffic configuration.
	Type: "SingleWeight" | "SingleHeader"
}
