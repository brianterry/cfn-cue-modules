package customdbengineversion

import "strings"

#Properties: {
	DatabaseInstallationFiles?: [...string]
	// The name of an Amazon S3 bucket that contains database installation files for your CEV. For example, a valid bucket name is ``my-custom-installation-files``.
	DatabaseInstallationFilesS3BucketName?: string & strings.MinRunes(3) & strings.MaxRunes(63)
	// The Amazon S3 directory that contains the database installation files for your CEV. For example, a valid bucket name is ``123456789012/cev1``. If this setting isn't specified, no prefix is assumed.
	DatabaseInstallationFilesS3Prefix?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// An optional description of your CEV.
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(1000)
	// The database engine to use for your custom engine version (CEV).
 Valid values:
  +   ``custom-oracle-ee`` 
  +   ``custom-oracle-ee-cdb`` 
  +   ``sqlserver-dev-ee`` 
  +   ``sqlserver-ee`` 
  +   ``sqlserver-se``
	Engine: string & strings.MinRunes(1) & strings.MaxRunes(35)
	// The name of your CEV. The name format is ``major version.customized_string``. For example, a valid CEV name is ``19.my_cev1``. This setting is required for RDS Custom for Oracle, but optional for Amazon RDS. The combination of ``Engine`` and ``EngineVersion`` is unique per customer per Region.
 *Constraints:* Minimum length is 1. Maximum length is 60.
 *Pattern:*``^[a-z0-9_.-]{1,60$``}
	EngineVersion: string & strings.MinRunes(1) & strings.MaxRunes(60)
	// A value that indicates the ID of the AMI.
	ImageId?: string
	// The AWS KMS key identifier for an encrypted CEV. A symmetric encryption KMS key is required for RDS Custom, but optional for Amazon RDS.
 If you have an existing symmetric encryption KMS key in your account, you can use it with RDS Custom. No further action is necessary. If you don't already have a symmetric encryption KMS key in your account, follow the instructions in [Creating a symmetric encryption KMS key](https://docs.aws.amazon.com/kms/latest/developerguide/create-keys.html#create-symmetric-cmk) in the *Key Management Service Developer Guide*.
 You can choose the same symmetric encryption key when you create a CEV and a DB instance, or choose different keys.
	KMSKeyId?: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	// The CEV manifest, which is a JSON document that describes the installation .zip files stored in Amazon S3. Specify the name/value pairs in a file or a quoted string. RDS Custom applies the patches in the order in which they are listed.
 The following JSON fields are valid:
  + MediaImportTemplateVersion Version of the CEV manifest. The date is in the format YYYY-MM-DD. + databaseInstallationFileNames Ordered list of installation files for the CEV. + opatchFileNames Ordered list of OPatch installers used for the Oracle DB engine. + psuRuPatchFileNames The PSU and RU patches for this CEV. + OtherPatchFileNames The patches that are not in the list of PSU and RU patches. Amazon RDS applies these patches after applying the PSU and RU patches. 
 For more information, see [Creating the CEV manifest](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/custom-cev.html#custom-cev.preparing.manifest) in the *Amazon RDS User Guide*.
	Manifest?: string & strings.MinRunes(1) & strings.MaxRunes(51000)
	// The ARN of a CEV to use as a source for creating a new CEV. You can specify a different Amazon Machine Imagine (AMI) by using either ``Source`` or ``UseAwsProvidedLatestImage``. You can't specify a different JSON manifest when you specify ``SourceCustomDbEngineVersionIdentifier``.
	SourceCustomDbEngineVersionIdentifier?: string
	// A value that indicates the status of a custom engine version (CEV).
	Status?: "available" | "inactive" | "inactive-except-restore" | "pending-validation"
	// A list of tags. For more information, see [Tagging Amazon RDS Resources](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html) in the *Amazon RDS User Guide.*
	Tags?: [...#Tag]
	// Specifies whether to use the latest service-provided Amazon Machine Image (AMI) for the CEV. If you specify ``UseAwsProvidedLatestImage``, you can't also specify ``ImageId``.
	UseAwsProvidedLatestImage?: bool
}

#Tag: {
	// A key is the required name of the tag. The string value can be from 1 to 128 Unicode characters in length and can't be prefixed with ``aws:`` or ``rds:``. The string can only contain only the set of Unicode letters, digits, white-space, '_', '.', ':', '/', '=', '+', '-', '@' (Java regex: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$").
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// A value is the optional value of the tag. The string value can be from 1 to 256 Unicode characters in length and can't be prefixed with ``aws:`` or ``rds:``. The string can only contain only the set of Unicode letters, digits, white-space, '_', '.', ':', '/', '=', '+', '-', '@' (Java regex: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$").
	Value?: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
