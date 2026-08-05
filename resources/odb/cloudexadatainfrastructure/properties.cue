package cloudexadatainfrastructure

import "strings"

#Properties: {
	// The name of the Availability Zone (AZ) where the Exadata infrastructure is located.
	AvailabilityZone?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// The AZ ID of the AZ where the Exadata infrastructure is located.
	AvailabilityZoneId?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// The number of database servers for the Exadata infrastructure.
	ComputeCount?: int
	// The email addresses of contacts to receive notification from Oracle about maintenance updates for the Exadata infrastructure.
	CustomerContactsToSendToOCI?: [...#CustomerContact]
	// The database server model type of the Exadata infrastructure. For the list of valid model names, use the ListDbSystemShapes operation.
	DatabaseServerType?: string & =~"^[a-zA-Z0-9_\\/.=-]+$" & strings.MinRunes(1) & strings.MaxRunes(255)
	// The user-friendly name for the Exadata infrastructure.
	DisplayName?: string & =~"^[a-zA-Z_](?!.*--)[a-zA-Z0-9_-]*$" & strings.MinRunes(1) & strings.MaxRunes(255)
	// The scheduling details for the maintenance window. Patching and system updates take place during the maintenance window.
	MaintenanceWindow?: #MaintenanceWindow
	// The model name of the Exadata infrastructure.
	Shape?: string & =~"^[a-zA-Z0-9_\\/.=-]+$" & strings.MinRunes(1) & strings.MaxRunes(255)
	// The number of storage servers that are activated for the Exadata infrastructure.
	StorageCount?: int
	// The storage server model type of the Exadata infrastructure. For the list of valid model names, use the ListDbSystemShapes operation.
	StorageServerType?: string & =~"^[a-zA-Z0-9_\\/.=-]+$" & strings.MinRunes(1) & strings.MaxRunes(255)
	// Tags to assign to the Exadata Infrastructure.
	Tags?: [...#Tag]
}

#CustomerContact: {
	// The email address of the contact.
	Email?: string
}

#MaintenanceWindow: {
	// The timeout duration for custom actions in minutes.
	CustomActionTimeoutInMins?: int & >=15 & <=120
	// The days of the week when maintenance can be performed.
	DaysOfWeek?: [..."MONDAY" | "TUESDAY" | "WEDNESDAY" | "THURSDAY" | "FRIDAY" | "SATURDAY" | "SUNDAY"]
	// The hours of the day when maintenance can be performed.
	HoursOfDay?: [...int]
	// Indicates whether custom action timeout is enabled.
	IsCustomActionTimeoutEnabled?: bool
	// The lead time in weeks before the maintenance window.
	LeadTimeInWeeks?: int & >=1 & <=4
	// The months when maintenance can be performed.
	Months?: [..."JANUARY" | "FEBRUARY" | "MARCH" | "APRIL" | "MAY" | "JUNE" | "JULY" | "AUGUST" | "SEPTEMBER" | "OCTOBER" | "NOVEMBER" | "DECEMBER"]
	// The patching mode for the maintenance window.
	PatchingMode?: string
	// The preference for the maintenance window scheduling.
	Preference?: string
	// The weeks of the month when maintenance can be performed.
	WeeksOfMonth?: [...int]
}

#Tag: {
	// The key name of the tag. You can specify a value that's 1 to 128 Unicode characters in length and can't be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., :, /, =, +, @, -, and ".
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that's 1 to 256 characters in length. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value?: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
