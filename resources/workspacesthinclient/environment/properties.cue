package environment

import "strings"

#Properties: {
	// The ID of the software set to apply.
	DesiredSoftwareSetId?: string & =~"^[0-9]{1,9}$"
	// The Amazon Resource Name (ARN) of the desktop to stream from Amazon WorkSpaces, WorkSpaces Web, or AppStream 2.0.
	DesktopArn: string & =~"^arn:[\\w+=\\/,.@-]+:[a-zA-Z0-9\\-]+:[a-zA-Z0-9\\-]*:[0-9]{0,12}:[a-zA-Z0-9\\-\\/\\._]+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	// The URL for the identity provider login (only for environments that use AppStream 2.0).
	DesktopEndpoint?: string & =~"^(https:\\/\\/)[a-z0-9]+([\\-\\.]{1}[a-z0-9]+)*\\.[a-z]{2,32}(:[0-9]{1,5})?(\\/.*)?$" & strings.MinRunes(1) & strings.MaxRunes(1024)
	// An array of key-value pairs to apply to the newly created devices for this environment.
	DeviceCreationTags?: [...#Tag]
	// The Amazon Resource Name (ARN) of the AWS Key Management Service key used to encrypt the environment.
	KmsKeyArn?: string & =~"^arn:[\\w+=\\/,.@-]+:kms:[a-zA-Z0-9\\-]*:[0-9]{0,12}:key\\/[a-zA-Z0-9-]+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	// A specification for a time window to apply software updates.
	MaintenanceWindow?: #MaintenanceWindow
	// The name of the environment.
	Name?: string & =~"^.+$" & strings.MinRunes(1) & strings.MaxRunes(64)
	// An option to define which software updates to apply.
	SoftwareSetUpdateMode?: "USE_LATEST" | "USE_DESIRED"
	// An option to define if software updates should be applied within a maintenance window.
	SoftwareSetUpdateSchedule?: "USE_MAINTENANCE_WINDOW" | "APPLY_IMMEDIATELY"
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#DayOfWeek: "MONDAY" | "TUESDAY" | "WEDNESDAY" | "THURSDAY" | "FRIDAY" | "SATURDAY" | "SUNDAY"

#Hour: int & >=0 & <=23

#MaintenanceWindow: {
	// The desired time zone maintenance window.
	ApplyTimeOf?: "UTC" | "DEVICE"
	// The date of maintenance window.
	DaysOfTheWeek?: [...#DayOfWeek]
	// The hour end time of maintenance window.
	EndTimeHour?: #Hour
	// The minute end time of maintenance window.
	EndTimeMinute?: #Minute
	// The hour start time of maintenance window.
	StartTimeHour?: #Hour
	// The minute start time of maintenance window.
	StartTimeMinute?: #Minute
	// The type of maintenance window.
	Type: "SYSTEM" | "CUSTOM"
}

#Minute: int & >=0 & <=59

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & =~"^(?!aws:)[a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 1 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MaxRunes(256)
}
