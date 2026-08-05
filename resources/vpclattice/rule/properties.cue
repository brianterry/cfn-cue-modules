package rule

import "strings"

#Properties: {
	Action: #Action
	ListenerIdentifier?: string & =~"^((listener-[0-9a-z]{17})|(arn(:[a-z0-9]+([.-][a-z0-9]+)*){2}(:([a-z0-9]+([.-][a-z0-9]+)*)?){2}:service/svc-[0-9a-z]{17}/listener/listener-[0-9a-z]{17}))$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	Match: #Match
	Name?: string & =~"^(?!rule-)(?![-])(?!.*[-]$)(?!.*[-]{2})[a-z0-9-]+$" & strings.MinRunes(3) & strings.MaxRunes(63)
	Priority: int & >=1 & <=100
	ServiceIdentifier?: string & =~"^((svc-[0-9a-z]{17})|(arn(:[a-z0-9]+([.-][a-z0-9]+)*){2}(:([a-z0-9]+([.-][a-z0-9]+)*)?){2}:service/svc-[0-9a-z]{17}))$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	Tags?: [...#Tag]
}

#Action: {
	FixedResponse?: #FixedResponse
	Forward?: #Forward
}

#FixedResponse: {
	StatusCode: int & >=100 & <=599
}

#Forward: {
	TargetGroups: [...#WeightedTargetGroup]
}

#HeaderMatch: {
	CaseSensitive?: bool
	Match: #HeaderMatchType
	Name: string & strings.MinRunes(1) & strings.MaxRunes(40)
}

#HeaderMatchType: {
	Contains?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Exact?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Prefix?: string & strings.MinRunes(1) & strings.MaxRunes(128)
}

#HttpMatch: {
	HeaderMatches?: [...#HeaderMatch]
	Method?: "CONNECT" | "DELETE" | "GET" | "HEAD" | "OPTIONS" | "POST" | "PUT" | "TRACE"
	PathMatch?: #PathMatch
}

#Match: {
	HttpMatch: #HttpMatch
}

#PathMatch: {
	CaseSensitive?: bool
	Match: #PathMatchType
}

#PathMatchType: {
	Exact?: string & =~"^\\/[a-zA-Z0-9@:%_+.~#?&\\/=-]*$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Prefix?: string & =~"^\\/[a-zA-Z0-9@:%_+.~#?&\\/=-]*$" & strings.MinRunes(1) & strings.MaxRunes(128)
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}

#WeightedTargetGroup: {
	TargetGroupIdentifier: string & =~"^((tg-[0-9a-z]{17})|(arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:targetgroup/tg-[0-9a-z]{17}))$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	Weight?: int & >=1 & <=999
}
