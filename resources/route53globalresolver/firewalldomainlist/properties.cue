package firewalldomainlist

import "strings"

#Properties: {
	ClientToken?: string & strings.MinRunes(1) & strings.MaxRunes(256)
	Description?: #ResourceDescription
	// S3 URL to import domains from.
	DomainFileUrl?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	Domains?: #Domains
	GlobalResolverId: string & strings.MinRunes(1) & strings.MaxRunes(64)
	Name: #ResourceName
	Tags?: [...#Tag]
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
