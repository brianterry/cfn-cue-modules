package targetgroup

import "strings"

#Properties: {
	Config?: #TargetGroupConfig
	Name?: string & =~"^(?!tg-)(?![-])(?!.*[-]$)(?!.*[-]{2})[a-z0-9-]+$" & strings.MinRunes(3) & strings.MaxRunes(128)
	Tags?: [...#Tag]
	Targets?: [...#Target]
	Type: "IP" | "LAMBDA" | "INSTANCE" | "ALB"
}

#HealthCheckConfig: {
	Enabled?: bool
	HealthCheckIntervalSeconds?: int & >=5 & <=300
	HealthCheckTimeoutSeconds?: int & >=1 & <=120
	HealthyThresholdCount?: int & >=2 & <=10
	Matcher?: #Matcher
	Path?: string & =~"(^/[a-zA-Z0-9@:%_+.~#?&/=-]*$|(^$))" & strings.MinRunes(0) & strings.MaxRunes(2048)
	Port?: int & >=1 & <=65535
	Protocol?: "HTTP" | "HTTPS"
	ProtocolVersion?: "HTTP1" | "HTTP2"
	UnhealthyThresholdCount?: int & >=2 & <=10
}

#Matcher: {
	HttpCode: string & =~"^[0-9-,]+$" & strings.MinRunes(3) & strings.MaxRunes(2000)
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}

#Target: {
	Id: string
	Port?: int & >=1 & <=65535
}

#TargetGroupConfig: {
	HealthCheck?: #HealthCheckConfig
	IpAddressType?: "IPV4" | "IPV6"
	LambdaEventStructureVersion?: "V1" | "V2"
	Port?: int & >=1 & <=65535
	Protocol?: "HTTP" | "HTTPS" | "TCP"
	ProtocolVersion?: "HTTP1" | "HTTP2" | "GRPC"
	VpcIdentifier?: string & =~"^vpc-(([0-9a-z]{8})|([0-9a-z]{17}))$" & strings.MinRunes(5) & strings.MaxRunes(2048)
}
