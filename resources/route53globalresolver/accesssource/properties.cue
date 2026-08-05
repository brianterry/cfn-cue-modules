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

#CRResourceStatus: "CREATING" | "OPERATIONAL" | "UPDATING" | "DELETING"

#Cidr: string & strings.MinRunes(1) & strings.MaxRunes(42)

#DnsProtocol: "DO53" | "DOH" | "DOT"

#IpAddressType: "IPV4" | "IPV6"

#ResourceName: string & =~"(?!^[0-9]+$)([a-zA-Z0-9-_' ']+)" & strings.MinRunes(1) & strings.MaxRunes(64)

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
