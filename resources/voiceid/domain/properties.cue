package domain

import "strings"

#Properties: {
	Description?: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$" & strings.MinRunes(1) & strings.MaxRunes(1024)
	Name: string & =~"^[a-zA-Z0-9][a-zA-Z0-9_-]*$" & strings.MinRunes(1) & strings.MaxRunes(256)
	ServerSideEncryptionConfiguration: #ServerSideEncryptionConfiguration
	Tags?: [...#Tag]
}

#ServerSideEncryptionConfiguration: {
	KmsKeyId: string & strings.MinRunes(1) & strings.MaxRunes(2048)
}

#Tag: {
	Key: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MinRunes(0) & strings.MaxRunes(256)
}
