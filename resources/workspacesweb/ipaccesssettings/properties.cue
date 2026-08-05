package ipaccesssettings

import "strings"

#Properties: {
	AdditionalEncryptionContext?: #EncryptionContextMap
	CustomerManagedKey?: string & =~"^arn:[\\w+=\\/,.@-]+:kms:[a-zA-Z0-9\\-]*:[a-zA-Z0-9]{1,12}:key\\/[a-zA-Z0-9-]+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	Description?: string & =~"^.+$" & strings.MinRunes(1) & strings.MaxRunes(256)
	DisplayName?: string & =~"^.+$" & strings.MinRunes(1) & strings.MaxRunes(64)
	IpRules: [...#IpRule]
	Tags?: [...#Tag]
}

#EncryptionContextMap: {...}

#IpRule: {
	Description?: string & =~"^.+$" & strings.MinRunes(1) & strings.MaxRunes(256)
	// A single IP address or an IP address range in CIDR notation
	IpRange: string
}

#Tag: {
	Key: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MinRunes(0) & strings.MaxRunes(256)
}

#Unit: {...}
