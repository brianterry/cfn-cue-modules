package activity

import "strings"

#Properties: {
	EncryptionConfiguration?: #EncryptionConfiguration
	Name: string & strings.MinRunes(1) & strings.MaxRunes(80)
	Tags?: [...#TagsEntry]
}

#EncryptionConfiguration: {
	KmsDataKeyReusePeriodSeconds?: int & >=60 & <=900
	KmsKeyId?: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	Type: "CUSTOMER_MANAGED_KMS_KEY" | "AWS_OWNED_KEY"
}

#TagsEntry: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
