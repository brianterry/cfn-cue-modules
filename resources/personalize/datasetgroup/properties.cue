package datasetgroup

import "strings"

#Properties: {
	// The domain of a Domain dataset group.
	Domain?: "ECOMMERCE" | "VIDEO_ON_DEMAND"
	// The Amazon Resource Name(ARN) of a AWS Key Management Service (KMS) key used to encrypt the datasets.
	KmsKeyArn?: string & =~"arn:aws.*:kms:.*:[0-9]{12}:key/.*" & strings.MaxRunes(2048)
	// The name for the new dataset group.
	Name: string & =~"^[a-zA-Z0-9][a-zA-Z0-9\\-_]*" & strings.MinRunes(1) & strings.MaxRunes(63)
	// The ARN of the AWS Identity and Access Management (IAM) role that has permissions to access the AWS Key Management Service (KMS) key. Supplying an IAM role is only valid when also specifying a KMS key.
	RoleArn?: string & =~"arn:([a-z\\d-]+):iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+" & strings.MinRunes(0) & strings.MaxRunes(256)
}
