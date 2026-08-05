package organizationconformancepack

import "strings"

#Properties: {
	// A list of ConformancePackInputParameter objects.
	ConformancePackInputParameters?: [...#ConformancePackInputParameter]
	// AWS Config stores intermediate files while processing conformance pack template.
	DeliveryS3Bucket?: string & strings.MinRunes(0) & strings.MaxRunes(63)
	// The prefix for the delivery S3 bucket.
	DeliveryS3KeyPrefix?: string & strings.MinRunes(0) & strings.MaxRunes(1024)
	// A list of AWS accounts to be excluded from an organization conformance pack while deploying a conformance pack.
	ExcludedAccounts?: [...#AccountId]
	// The name of the organization conformance pack.
	OrganizationConformancePackName: string & =~"[a-zA-Z][-a-zA-Z0-9]*" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The tags for the organization conformance pack.
	Tags?: [...#Tag]
	// A string containing full conformance pack template body.
	TemplateBody?: string & strings.MinRunes(1) & strings.MaxRunes(51200)
	// Location of file containing the template body.
	TemplateS3Uri?: string & =~"s3://.*" & strings.MinRunes(1) & strings.MaxRunes(1024)
}

#ConformancePackInputParameter: {
	ParameterName: #ParameterName
	ParameterValue: #ParameterValue
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 127 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -. 
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 1 to 255 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -. 
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
