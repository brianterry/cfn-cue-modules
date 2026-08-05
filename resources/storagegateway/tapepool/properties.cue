package tapepool

import "strings"

#Properties: {
	// The name of the custom tape pool.
	PoolName: string & =~"^[ -\\.0-\\[\\]-~]*[!-\\.0-\\[\\]-~][ -\\.0-\\[\\]-~]*$" & strings.MinRunes(1) & strings.MaxRunes(100)
	// Tape retention lock time in days (up to 36,500 days / 100 years).
	RetentionLockTimeInDays?: int & >=0 & <=36500
	// Tape retention lock type. Governance mode allows authorized removal; compliance mode prevents all removal.
	RetentionLockType?: "COMPLIANCE" | "GOVERNANCE" | "NONE"
	// The storage class associated with the custom pool (S3 Glacier or S3 Glacier Deep Archive).
	StorageClass: "DEEP_ARCHIVE" | "GLACIER"
	// A list of up to 50 tags for the tape pool.
	Tags?: [...#Tag]
}

#Tag: {
	// The tag key.
	Key: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The tag value.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
