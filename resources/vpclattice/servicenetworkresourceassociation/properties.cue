package servicenetworkresourceassociation

import "strings"

#Properties: {
	PrivateDnsEnabled?: bool
	ResourceConfigurationId?: string & =~"^rcfg-[0-9a-z]{17}$" & strings.MinRunes(17) & strings.MaxRunes(2048)
	ServiceNetworkId?: string & =~"^((sn-[0-9a-z]{17})|(arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:servicenetwork/sn-[0-9a-z]{17}))$" & strings.MinRunes(3) & strings.MaxRunes(2048)
	Tags?: [...#Tag]
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
