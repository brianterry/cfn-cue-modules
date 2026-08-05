package ipset

import "strings"

#Properties: {
	// List of IPAddresses.
	Addresses: [...#IPAddress]
	Description?: #EntityDescription
	IPAddressVersion: #IPAddressVersion
	Name?: #EntityName
	Scope: #Scope
	Tags?: [...#Tag]
}

#Tag: {
	Key?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value?: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
