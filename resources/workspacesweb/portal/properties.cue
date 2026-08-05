package portal

import "strings"

#Properties: {
	AdditionalEncryptionContext?: #EncryptionContextMap
	AuthenticationType?: #AuthenticationType
	BrowserSettingsArn?: string & =~"^arn:[\\w+=\\/,.@-]+:[a-zA-Z0-9\\-]+:[a-zA-Z0-9\\-]*:[a-zA-Z0-9]{1,12}:[a-zA-Z]+(\\/[a-fA-F0-9\\-]{36})+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	CustomerManagedKey?: string & =~"^arn:[\\w+=\\/,.@-]+:kms:[a-zA-Z0-9\\-]*:[a-zA-Z0-9]{1,12}:key\\/[a-zA-Z0-9-]+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	DataProtectionSettingsArn?: string & =~"^arn:[\\w+=\\/,.@-]+:[a-zA-Z0-9\\-]+:[a-zA-Z0-9\\-]*:[a-zA-Z0-9]{1,12}:[a-zA-Z]+(\\/[a-fA-F0-9\\-]{36})+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	DisplayName?: string & =~"^.+$" & strings.MinRunes(1) & strings.MaxRunes(64)
	InstanceType?: #InstanceType
	IpAccessSettingsArn?: string & =~"^arn:[\\w+=\\/,.@-]+:[a-zA-Z0-9\\-]+:[a-zA-Z0-9\\-]*:[a-zA-Z0-9]{1,12}:[a-zA-Z]+(\\/[a-fA-F0-9\\-]{36})+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	MaxConcurrentSessions?: number & >=1 & <=5000
	NetworkSettingsArn?: string & =~"^arn:[\\w+=\\/,.@-]+:[a-zA-Z0-9\\-]+:[a-zA-Z0-9\\-]*:[a-zA-Z0-9]{1,12}:[a-zA-Z]+(\\/[a-fA-F0-9\\-]{36})+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	PortalCustomDomain?: string & =~"^[a-zA-Z0-9]?((?!-)([A-Za-z0-9-]*[A-Za-z0-9])\\.)+[a-zA-Z0-9]+$" & strings.MinRunes(0) & strings.MaxRunes(128)
	SessionLoggerArn?: string & =~"^arn:[\\w+=\\/,.@-]+:[a-zA-Z0-9\\-]+:[a-zA-Z0-9\\-]*:[a-zA-Z0-9]{1,12}:[a-zA-Z]+(\\/[a-fA-F0-9\\-]{36})+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	Tags?: [...#Tag]
	TrustStoreArn?: string & =~"^arn:[\\w+=\\/,.@-]+:[a-zA-Z0-9\\-]+:[a-zA-Z0-9\\-]*:[a-zA-Z0-9]{1,12}:[a-zA-Z]+(\\/[a-fA-F0-9\\-]{36})+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	UserAccessLoggingSettingsArn?: string & =~"^arn:[\\w+=\\/,.@-]+:[a-zA-Z0-9\\-]+:[a-zA-Z0-9\\-]*:[a-zA-Z0-9]{1,12}:[a-zA-Z]+(\\/[a-fA-F0-9\\-]{36})+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	UserSettingsArn?: string & =~"^arn:[\\w+=\\/,.@-]+:[a-zA-Z0-9\\-]+:[a-zA-Z0-9\\-]*:[a-zA-Z0-9]{1,12}:[a-zA-Z]+(\\/[a-fA-F0-9\\-]{36})+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
}

#AuthenticationType: "Standard" | "IAM_Identity_Center"

#BrowserType: "Chrome"

#EncryptionContextMap: {...}

#InstanceType: "standard.regular" | "standard.large" | "standard.xlarge"

#PortalStatus: "Incomplete" | "Pending" | "Active"

#RendererType: "AppStream"

#Tag: {
	Key: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MinRunes(0) & strings.MaxRunes(256)
}
