package deliverydestination

import "strings"

#Properties: {
	// IAM policy that grants permissions to CloudWatch Logs to deliver logs cross-account to a specified destination in this account.

The policy must be in JSON string format.

Length Constraints: Maximum length of 51200
	DeliveryDestinationPolicy?: #DestinationPolicy
	// Displays whether this delivery destination is CloudWatch Logs, Amazon S3, Kinesis Data Firehose, or XRay.
	DeliveryDestinationType?: string & =~"^[0-9A-Za-z]+$" & strings.MinRunes(1) & strings.MaxRunes(12)
	// The ARN of the Amazon Web Services destination that this delivery destination represents. That Amazon Web Services destination can be a log group in CloudWatch Logs, an Amazon S3 bucket, or a delivery stream in Firehose.
	DestinationResourceArn?: #Arn
	// The name of this delivery destination.
	Name: string & =~"[\\w-]*$" & strings.MinRunes(1) & strings.MaxRunes(60)
	// The format of the logs that are sent to this delivery destination.
	OutputFormat?: string & =~"^[0-9A-Za-z]+$" & strings.MinRunes(1) & strings.MaxRunes(12)
	// The tags that have been assigned to this delivery destination.
	Tags?: [...#Tag]
}

#DestinationPolicy: {
	// The name of the delivery destination to assign this policy to
	DeliveryDestinationName?: string & strings.MinRunes(1) & strings.MaxRunes(60)
	// The contents of the policy attached to the delivery destination
	DeliveryDestinationPolicy?: {...}
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
