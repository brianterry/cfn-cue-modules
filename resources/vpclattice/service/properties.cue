package service

import "strings"

#Properties: {
	AuthType?: "NONE" | "AWS_IAM"
	CertificateArn?: string & =~"^(arn(:[a-z0-9]+([.-][a-z0-9]+)*){2}(:([a-z0-9]+([.-][a-z0-9]+)*)?){2}:certificate/[0-9a-z-]+)?$" & strings.MaxRunes(2048)
	CustomDomainName?: string & strings.MinRunes(3) & strings.MaxRunes(255)
	IdleTimeoutSeconds?: int & >=60 & <=600
	Name?: string & =~"^(?!svc-)(?![-])(?!.*[-]$)(?!.*[-]{2})[a-z0-9-]+$" & strings.MinRunes(3) & strings.MaxRunes(40)
	Tags?: [...#Tag]
}

#DnsEntry: {
	DomainName?: string
	HostedZoneId?: string
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
