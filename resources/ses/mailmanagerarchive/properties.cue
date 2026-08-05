package mailmanagerarchive

import "strings"

#Properties: {
	ArchiveName?: string & =~"^[a-zA-Z0-9][a-zA-Z0-9_-]*[a-zA-Z0-9]$" & strings.MinRunes(1) & strings.MaxRunes(64)
	KmsKeyArn?: string & =~"^arn:aws(|-cn|-us-gov|-eusc):kms:[a-z0-9-]{1,20}:[0-9]{12}:(key|alias)/.+$"
	Retention?: #ArchiveRetention
	Tags?: [...#Tag]
}

#Tag: {
	Key: string & =~"^[a-zA-Z0-9/_\\+=\\.:@\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & =~"^[a-zA-Z0-9/_\\+=\\.:@\\-]*$" & strings.MinRunes(0) & strings.MaxRunes(256)
}
