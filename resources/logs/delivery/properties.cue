package delivery

import "strings"

#Properties: {
	// The ARN of the delivery destination that is associated with this delivery.
	DeliveryDestinationArn: #Arn
	// The name of the delivery source that is associated with this delivery.
	DeliverySourceName: string & =~"[\\w-]*$" & strings.MinRunes(1) & strings.MaxRunes(60)
	// The field delimiter to use between record fields when the final output format of a delivery is in Plain , W3C , or Raw format.
	FieldDelimiter?: string & strings.MinRunes(1) & strings.MaxRunes(5)
	// The list of record fields to be delivered to the destination, in order. If the delivery's log source has mandatory fields, they must be included in this list.
	RecordFields?: [...#FieldHeader]
	// This parameter causes the S3 objects that contain delivered logs to use a prefix structure that allows for integration with Apache Hive.
	S3EnableHiveCompatiblePath?: bool
	// This string allows re-configuring the S3 object prefix to contain either static or variable sections. The valid variables to use in the suffix path will vary by each log source. See ConfigurationTemplate$allowedSuffixPathFields for more info on what values are supported in the suffix path for each log source.
	S3SuffixPath?: string & strings.MinRunes(0) & strings.MaxRunes(256)
	// The tags that have been assigned to this delivery.
	Tags?: [...#Tag]
}

#Arn: string & =~"[\\w#+=/:,.@-]*\\*?" & strings.MinRunes(16) & strings.MaxRunes(2048)

#FieldHeader: string & strings.MinRunes(1) & strings.MaxRunes(50)

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
