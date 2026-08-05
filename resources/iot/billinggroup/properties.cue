package billinggroup

import "strings"

#Properties: {
	BillingGroupName?: string & =~"[a-zA-Z0-9:_-]+" & strings.MinRunes(1) & strings.MaxRunes(128)
	BillingGroupProperties?: {
		BillingGroupDescription?: string & =~"[\\p{Graph}\\x20]*" & strings.MaxRunes(2028)
	}
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#Tag: {
	// Tag key (1-128 chars). No 'aws:' prefix. Allows: [A-Za-z0-9 _.:/=+-]
	Key: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// Tag value (1-256 chars). No 'aws:' prefix. Allows: [A-Za-z0-9 _.:/=+-]
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
