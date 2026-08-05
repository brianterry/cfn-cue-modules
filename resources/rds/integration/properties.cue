package integration

import "strings"

#Properties: {
	// An optional set of non-secret key–value pairs that contains additional contextual information about the data. For more information, see [Encryption context](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context) in the *Key Management Service Developer Guide*.
	// You can only include this parameter if you specify the ``KMSKeyId`` parameter.
	AdditionalEncryptionContext?: #EncryptionContextMap
	// Data filters for the integration. These filters determine which tables from the source database are sent to the target Amazon Redshift data warehouse.
	DataFilter?: string & =~"[a-zA-Z0-9_ \"\\\\\\-$,*.:?+\\/]*" & strings.MinRunes(1) & strings.MaxRunes(25600)
	// A description of the integration.
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(1000)
	// The name of the integration.
	IntegrationName?: string & strings.MinRunes(1) & strings.MaxRunes(64)
	// The AWS Key Management System (AWS KMS) key identifier for the key to use to encrypt the integration. If you don't specify an encryption key, RDS uses a default AWS owned key.
	KMSKeyId?: string
	// The Amazon Resource Name (ARN) of the database to use as the source for replication.
	SourceArn: string
	// A list of tags. For more information, see [Tagging Amazon RDS Resources](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html) in the *Amazon RDS User Guide.*.
	Tags?: [...#Tag]
	// The ARN of the Redshift data warehouse to use as the target for replication.
	TargetArn: string
}

#EncryptionContextMap: {...}

#Tag: {
	// A key is the required name of the tag. The string value can be from 1 to 128 Unicode characters in length and can't be prefixed with ``aws:`` or ``rds:``. The string can only contain only the set of Unicode letters, digits, white-space, '_', '.', ':', '/', '=', '+', '-', '@' (Java regex: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$").
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// A value is the optional value of the tag. The string value can be from 1 to 256 Unicode characters in length and can't be prefixed with ``aws:`` or ``rds:``. The string can only contain only the set of Unicode letters, digits, white-space, '_', '.', ':', '/', '=', '+', '-', '@' (Java regex: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$").
	Value?: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#Tags: [...#Tag]
