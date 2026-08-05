package samplingrule

import "strings"

#Properties: {
	RuleName?: #RuleName
	SamplingRule?: #SamplingRule
	SamplingRuleRecord?: #SamplingRuleRecord
	SamplingRuleUpdate?: #SamplingRuleUpdate
	Tags?: #Tags
}

#SamplingRateBoost: {
	// Time window (in minutes) in which only one sampling rate boost can be triggered. After a boost occurs, no further boosts are allowed until the next window.
	CooldownWindowMinutes: int & >=1
	// The maximum sampling rate X-Ray will apply when it detects anomalies. X-Ray determines the appropriate rate between your baseline and the maximum, depending on anomaly activity.
	MaxRate: number & >=0 & <=1
}

#SamplingRule: {
	// Matches attributes derived from the request.
	Attributes?: {...}
	// The percentage of matching requests to instrument, after the reservoir is exhausted.
	FixedRate: number & >=0 & <=1
	// Matches the HTTP method from a request URL.
	HTTPMethod: string & strings.MaxRunes(10)
	// Matches the hostname from a request URL.
	Host: string & strings.MaxRunes(64)
	// The priority of the sampling rule.
	Priority: int & >=1 & <=9999
	// A fixed number of matching requests to instrument per second, prior to applying the fixed rate. The reservoir is not used directly by services, but applies to all services using the rule collectively.
	ReservoirSize: int & >=0
	// Matches the ARN of the AWS resource on which the service runs.
	ResourceARN: string & strings.MaxRunes(500)
	RuleARN?: #RuleARN
	RuleName?: #RuleName
	SamplingRateBoost?: #SamplingRateBoost
	// Matches the name that the service uses to identify itself in segments.
	ServiceName: string & strings.MaxRunes(64)
	// Matches the origin that the service uses to identify its type in segments.
	ServiceType: string & strings.MaxRunes(64)
	// Matches the path from a request URL.
	URLPath: string & strings.MaxRunes(128)
	// The version of the sampling rule format (1)
	Version?: int & >=1
}

#SamplingRuleRecord: {
	// When the rule was created, in Unix time seconds.
	CreatedAt?: string
	// When the rule was modified, in Unix time seconds.
	ModifiedAt?: string
	SamplingRule?: #SamplingRule
}

#SamplingRuleUpdate: {
	// Matches attributes derived from the request.
	Attributes?: {...}
	// The percentage of matching requests to instrument, after the reservoir is exhausted.
	FixedRate?: number & >=0 & <=1
	// Matches the HTTP method from a request URL.
	HTTPMethod?: string & strings.MaxRunes(10)
	// Matches the hostname from a request URL.
	Host?: string & strings.MaxRunes(64)
	// The priority of the sampling rule.
	Priority?: int & >=1 & <=9999
	// A fixed number of matching requests to instrument per second, prior to applying the fixed rate. The reservoir is not used directly by services, but applies to all services using the rule collectively.
	ReservoirSize?: int & >=0
	// Matches the ARN of the AWS resource on which the service runs.
	ResourceARN?: string & strings.MaxRunes(500)
	RuleARN?: #RuleARN
	RuleName?: #RuleName
	SamplingRateBoost?: #SamplingRateBoost
	// Matches the name that the service uses to identify itself in segments.
	ServiceName?: string & strings.MaxRunes(64)
	// Matches the origin that the service uses to identify its type in segments.
	ServiceType?: string & strings.MaxRunes(64)
	// Matches the path from a request URL.
	URLPath?: string & strings.MaxRunes(128)
}

#Tag: {
	// The key name of the tag.
	Key: string
	// The value for the tag.
	Value: string
}
