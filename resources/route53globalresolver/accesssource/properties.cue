package accesssource

import "strings"

#Properties: {
	Cidr: #Cidr
	ClientToken?: string & strings.MinRunes(1) & strings.MaxRunes(256)
	DnsViewId: string & strings.MinRunes(1) & strings.MaxRunes(64)
	IpAddressType?: #IpAddressType
	Name?: #ResourceName
	Protocol: #DnsProtocol
	Tags?: [...#Tag]
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
