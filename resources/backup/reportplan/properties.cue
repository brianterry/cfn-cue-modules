package reportplan

import "strings"

#Properties: {
	// A structure that contains information about where and how to deliver your reports, specifically your Amazon S3 bucket name, S3 key prefix, and the formats of your reports.
	ReportDeliveryChannel: {
		Formats?: [...string]
		S3BucketName: string
		S3KeyPrefix?: string
	}
	// An optional description of the report plan with a maximum of 1,024 characters.
	ReportPlanDescription?: string & =~".*\\S.*" & strings.MinRunes(0) & strings.MaxRunes(1024)
	// The unique name of the report plan. The name must be between 1 and 256 characters, starting with a letter, and consisting of letters (a-z, A-Z), numbers (0-9), and underscores (_).
	ReportPlanName?: string & =~"[a-zA-Z][_a-zA-Z0-9]*" & strings.MinRunes(1) & strings.MaxRunes(256)
	// Metadata that you can assign to help organize the report plans that you create. Each tag is a key-value pair.
	ReportPlanTags?: [...#Tag]
	// Identifies the report template for the report. Reports are built using a report template.
	ReportSetting: {
		Accounts?: [...string]
		FrameworkArns?: [...string]
		OrganizationUnits?: [...string]
		Regions?: [...string]
		ReportTemplate: string
	}
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value?: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
