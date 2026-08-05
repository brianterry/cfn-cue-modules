package servicenetworkserviceassociation

import "strings"

#Properties: {
	ServiceIdentifier?: string & =~"^((svc-[0-9a-z]{17})|(arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:service/svc-[0-9a-z]{17}))$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	ServiceNetworkIdentifier?: string & =~"^((sn-[0-9a-z]{17})|(arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:servicenetwork/sn-[0-9a-z]{17}))$" & strings.MinRunes(20) & strings.MaxRunes(2048)
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
