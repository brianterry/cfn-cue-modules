package keysigningkey

import "strings"

#Properties: {
	// The unique string (ID) used to identify a hosted zone.
	HostedZoneId: string & =~"^[A-Z0-9]{1,32}$"
	// The Amazon resource name (ARN) for a customer managed key (CMK) in AWS Key Management Service (KMS). The KeyManagementServiceArn must be unique for each key signing key (KSK) in a single hosted zone.
	KeyManagementServiceArn: string & strings.MinRunes(1) & strings.MaxRunes(256)
	// An alphanumeric string used to identify a key signing key (KSK). Name must be unique for each key signing key in the same hosted zone.
	Name: string & =~"^[a-zA-Z0-9_]{3,128}$"
	// A string specifying the initial status of the key signing key (KSK). You can set the value to ACTIVE or INACTIVE.
	Status: "ACTIVE" | "INACTIVE"
}
