package partneraccount

import "strings"

#Properties: {
	// Whether the partner account is linked to the AWS account.
	AccountLinked?: bool
	// The partner account ID to disassociate from the AWS account
	PartnerAccountId?: string & strings.MaxRunes(256)
	// The partner type
	PartnerType?: "Sidewalk"
	// The Sidewalk account credentials.
	Sidewalk?: #SidewalkAccountInfo
	// The Sidewalk account credentials.
	SidewalkResponse?: #SidewalkAccountInfoWithFingerprint
	// The Sidewalk account credentials.
	SidewalkUpdate?: #SidewalkUpdateAccount
	// A list of key-value pairs that contain metadata for the destination.
	Tags?: [...#Tag]
}

#SidewalkAccountInfo: {
	AppServerPrivateKey: string & =~"[a-fA-F0-9]{64}" & strings.MinRunes(1) & strings.MaxRunes(4096)
}

#SidewalkAccountInfoWithFingerprint: {
	AmazonId?: string & strings.MaxRunes(2048)
	Arn?: string
	Fingerprint?: string & =~"[a-fA-F0-9]{64}" & strings.MinRunes(64) & strings.MaxRunes(64)
}

#SidewalkUpdateAccount: {
	AppServerPrivateKey?: string & =~"[a-fA-F0-9]{64}" & strings.MinRunes(1) & strings.MaxRunes(4096)
}

#Tag: {
	Key?: string & strings.MinRunes(1) & strings.MaxRunes(127)
	Value?: string & strings.MinRunes(1) & strings.MaxRunes(255)
}
