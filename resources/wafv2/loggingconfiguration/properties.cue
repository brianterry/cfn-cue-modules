package loggingconfiguration

#Properties: {
	// The Amazon Resource Names (ARNs) of the logging destinations that you want to associate with the web ACL.
	LogDestinationConfigs: [...string]
	// Filtering that specifies which web requests are kept in the logs and which are dropped. You can filter on the rule action and on the web request labels that were applied by matching rules during web ACL evaluation.
	LoggingFilter?: {
		DefaultBehavior: "KEEP" | "DROP"
		Filters: [...#Filter]
	}
	// The parts of the request that you want to keep out of the logs. For example, if you redact the HEADER field, the HEADER field in the firehose will be xxx.
	RedactedFields?: [...#FieldToMatch]
	// The Amazon Resource Name (ARN) of the web ACL that you want to associate with LogDestinationConfigs.
	ResourceArn: string
}

#Condition: {
	// A single action condition.
	ActionCondition?: {
		Action: "ALLOW" | "BLOCK" | "COUNT" | "CAPTCHA" | "CHALLENGE" | "MONETIZE" | "EXCLUDED_AS_COUNT"
	}
	// A single label name condition.
	LabelNameCondition?: {
		LabelName: string
	}
}

#FieldToMatch: {
	// Inspect the HTTP method. The method indicates the type of operation that the request is asking the origin to perform.
	Method?: {...}
	// Inspect the query string. This is the part of a URL that appears after a ? character, if any.
	QueryString?: {...}
	// Inspect a single header. Provide the name of the header to inspect, for example, User-Agent or Referer. This setting isn't case sensitive.
	SingleHeader?: {
		Name: string
	}
	// Inspect the request URI path. This is the part of a web request that identifies a resource, for example, /images/daily-ad.jpg.
	UriPath?: {...}
}

#Filter: {
	// How to handle logs that satisfy the filter's conditions and requirement.
	Behavior: "KEEP" | "DROP"
	// Match conditions for the filter.
	Conditions: [...#Condition]
	// Logic to apply to the filtering conditions. You can specify that, in order to satisfy the filter, a log must match all conditions or must match at least one condition.
	Requirement: "MEETS_ALL" | "MEETS_ANY"
}
