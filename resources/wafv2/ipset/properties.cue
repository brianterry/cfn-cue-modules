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

#EntityDescription: string & =~"^[a-zA-Z0-9=:#@/\\-,.][a-zA-Z0-9+=:#@/\\-,.\\s]+[a-zA-Z0-9+=:#@/\\-,.]{1,256}$"

#EntityId: string & =~"^[0-9a-f]{8}-(?:[0-9a-f]{4}-){3}[0-9a-f]{12}$"

#EntityName: string & =~"^[0-9A-Za-z_-]{1,128}$"

#IPAddress: string & strings.MinRunes(1) & strings.MaxRunes(50)

#IPAddressVersion: "IPV4" | "IPV6"

#ResourceArn: string

#Scope: "CLOUDFRONT" | "REGIONAL"

#Tag: {
	Key?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value?: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
