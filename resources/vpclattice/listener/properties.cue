package listener

import "strings"

#Properties: {
	DefaultAction: #DefaultAction
	Name?: string & =~"^(?!listener-)(?![-])(?!.*[-]$)(?!.*[-]{2})[a-z0-9-]+$" & strings.MinRunes(3) & strings.MaxRunes(63)
	Port?: int & >=1 & <=65535
	Protocol: "HTTP" | "HTTPS" | "TLS_PASSTHROUGH"
	ServiceIdentifier?: string & =~"^((svc-[0-9a-z]{17})|(arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:service/svc-[0-9a-z]{17}))$" & strings.MinRunes(21) & strings.MaxRunes(2048)
	Tags?: [...#Tag]
}

#DefaultAction: {
	FixedResponse?: #FixedResponse
	Forward?: #Forward
}

#FixedResponse: {
	StatusCode: int & >=100 & <=599
}

#Forward: {
	TargetGroups: [...#WeightedTargetGroup]
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}

#WeightedTargetGroup: {
	TargetGroupIdentifier: string & =~"^((tg-[0-9a-z]{17})|(arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:targetgroup/tg-[0-9a-z]{17}))$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	Weight?: int & >=0 & <=999
}
