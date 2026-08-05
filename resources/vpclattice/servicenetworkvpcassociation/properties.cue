package servicenetworkvpcassociation

import "strings"

#Properties: {
	DnsOptions?: #DnsOptions
	PrivateDnsEnabled?: bool
	SecurityGroupIds?: [...string & =~"^sg-(([0-9a-z]{8})|([0-9a-z]{17}))$" & strings.MinRunes(0) & strings.MaxRunes(200)]
	ServiceNetworkIdentifier?: string & =~"^((sn-[0-9a-z]{17})|(arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:servicenetwork/sn-[0-9a-z]{17}))$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	Tags?: [...#Tag]
	VpcIdentifier?: string & =~"^vpc-(([0-9a-z]{8})|([0-9a-z]{17}))$" & strings.MinRunes(5) & strings.MaxRunes(2048)
}

#DnsOptions: {
	PrivateDnsPreference?: "VERIFIED_DOMAINS_ONLY" | "ALL_DOMAINS" | "VERIFIED_DOMAINS_AND_SPECIFIED_DOMAINS" | "SPECIFIED_DOMAINS_ONLY"
	PrivateDnsSpecifiedDomains?: [...string & strings.MinRunes(1) & strings.MaxRunes(255)]
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
