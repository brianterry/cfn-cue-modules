package mailmanagerarchive

import "strings"

#Properties: {
	ArchiveName?: string & =~"^[a-zA-Z0-9][a-zA-Z0-9_-]*[a-zA-Z0-9]$" & strings.MinRunes(1) & strings.MaxRunes(64)
	KmsKeyArn?: string & =~"^arn:aws(|-cn|-us-gov|-eusc):kms:[a-z0-9-]{1,20}:[0-9]{12}:(key|alias)/.+$"
	Retention?: #ArchiveRetention
	Tags?: [...#Tag]
}

#ArchiveRetention: {
	RetentionPeriod: #RetentionPeriod
}

#ArchiveState: "ACTIVE" | "PENDING_DELETION"

#RetentionPeriod: "THREE_MONTHS" | "SIX_MONTHS" | "NINE_MONTHS" | "ONE_YEAR" | "EIGHTEEN_MONTHS" | "TWO_YEARS" | "THIRTY_MONTHS" | "THREE_YEARS" | "FOUR_YEARS" | "FIVE_YEARS" | "SIX_YEARS" | "SEVEN_YEARS" | "EIGHT_YEARS" | "NINE_YEARS" | "TEN_YEARS" | "PERMANENT"

#Tag: {
	Key: string & =~"^[a-zA-Z0-9/_\\+=\\.:@\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & =~"^[a-zA-Z0-9/_\\+=\\.:@\\-]*$" & strings.MinRunes(0) & strings.MaxRunes(256)
}
