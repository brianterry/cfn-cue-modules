package partnerapp

import "strings"

#Properties: {
	// The version of the PartnerApp.
	AppVersion?: string & strings.MinRunes(1) & strings.MaxRunes(64)
	// A collection of settings that specify the maintenance schedule for the PartnerApp.
	ApplicationConfig?: #PartnerAppConfig
	// The Auth type of PartnerApp.
	AuthType: "IAM"
	// The client token for the PartnerApp.
	ClientToken?: string & =~"^[a-zA-Z0-9-]+$" & strings.MinRunes(1) & strings.MaxRunes(36)
	// Enables automatic minor version upgrades for the PartnerApp.
	EnableAutoMinorVersionUpgrade?: bool
	// Enables IAM Session based Identity for PartnerApp.
	EnableIamSessionBasedIdentity?: bool
	// The execution role for the user.
	ExecutionRoleArn: string & =~"^arn:aws[a-z\\-]*:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	// The AWS KMS customer managed key used to encrypt the data associated with the PartnerApp.
	KmsKeyId?: string & =~".*" & strings.MaxRunes(2048)
	// A collection of settings that specify the maintenance schedule for the PartnerApp.
	MaintenanceConfig?: #PartnerAppMaintenanceConfig
	// A name for the PartnerApp.
	Name: string & =~"^[a-zA-Z0-9]+" & strings.MinRunes(1) & strings.MaxRunes(256)
	// A list of tags to apply to the PartnerApp.
	Tags?: [...#Tag]
	// The tier of the PartnerApp.
	Tier: string & strings.MinRunes(1) & strings.MaxRunes(64)
	// The type of PartnerApp.
	Type: "lakera-guard" | "comet" | "deepchecks-llm-evaluation" | "fiddler"
}

#PartnerAppConfig: {
	// A list of users with administrator privileges for the PartnerApp.
	AdminUsers?: [...#PartnerAppAdminUserList]
	// A list of arguments to pass to the PartnerApp.
	Arguments?: {...}
}

#PartnerAppMaintenanceConfig: {
	// The maintenance window start day and time for the PartnerApp.
	MaintenanceWindowStart: string & =~"(Mon|Tue|Wed|Thu|Fri|Sat|Sun):([01]\\d|2[0-3]):([0-5]\\d)" & strings.MaxRunes(9)
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(1) & strings.MaxRunes(128)
}
