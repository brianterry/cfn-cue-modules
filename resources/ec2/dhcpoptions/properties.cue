package dhcpoptions

import "strings"

#Properties: {
	// This value is used to complete unqualified DNS hostnames.
	DomainName?: string
	// The IPv4 addresses of up to four domain name servers, or AmazonProvidedDNS.
	DomainNameServers?: [...string]
	// The preferred Lease Time for ipV6 address in seconds.
	Ipv6AddressPreferredLeaseTime?: int
	// The IPv4 addresses of up to four NetBIOS name servers.
	NetbiosNameServers?: [...string]
	// The NetBIOS node type (1, 2, 4, or 8).
	NetbiosNodeType?: int
	// The IPv4 addresses of up to four Network Time Protocol (NTP) servers.
	NtpServers?: [...string]
	// Any tags assigned to the DHCP options set.
	Tags?: [...#Tag]
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
