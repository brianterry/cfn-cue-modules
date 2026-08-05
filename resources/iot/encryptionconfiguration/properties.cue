package encryptionconfiguration

import "strings"

#Properties: {
	EncryptionType: "CUSTOMER_MANAGED_KMS_KEY" | "AWS_OWNED_KMS_KEY"
	KmsAccessRoleArn?: string & strings.MinRunes(20) & strings.MaxRunes(2048)
	KmsKeyArn?: string & strings.MinRunes(20) & strings.MaxRunes(2048)
}
