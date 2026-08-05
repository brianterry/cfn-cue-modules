package subscriber

import "strings"

#Properties: {
	AccessTypes: #AccessTypes
	// The ARN for the data lake.
	DataLakeArn: string & strings.MinRunes(1) & strings.MaxRunes(256)
	// The supported AWS services from which logs and events are collected.
	Sources: [...#Source]
	// The description for your subscriber account in Security Lake.
	SubscriberDescription?: string
	// The AWS identity used to access your data.
	SubscriberIdentity: {
		ExternalId: string & =~"^[\\w+=,.@:/-]*$" & strings.MinRunes(2) & strings.MaxRunes(1224)
		Principal: string & =~"^([0-9]{12}|[a-z0-9\\.\\-]*\\.(amazonaws|amazon)\\.com)$"
	}
	// The name of your Security Lake subscriber account.
	SubscriberName: string & =~"^[\\\\\\w\\s\\-_:/,.@=+]*$" & strings.MinRunes(1) & strings.MaxRunes(64)
	// An array of objects, one for each tag to associate with the subscriber. For each tag, you must specify both a tag key and a tag value. A tag value cannot be null, but it can be an empty string.
	Tags?: [...#Tag]
}

#AwsLogSource: {
	// The name for a AWS source. This must be a Regionally unique value.
	SourceName?: string
	// The version for a AWS source. This must be a Regionally unique value.
	SourceVersion?: string & =~"^(latest|[0-9]\\.[0-9])$"
}

#CustomLogSource: {
	// The name for a third-party custom source. This must be a Regionally unique value.
	SourceName?: string & =~"^[\\\\\\w\\-_:/.]*$" & strings.MinRunes(1) & strings.MaxRunes(64)
	// The version for a third-party custom source. This must be a Regionally unique value.
	SourceVersion?: string & =~"^[A-Za-z0-9\\-\\.\\_]*$" & strings.MinRunes(1) & strings.MaxRunes(32)
}

#Source: {
	AwsLogSource?: #AwsLogSource
	CustomLogSource?: #CustomLogSource
}

#Tag: {
	// The name of the tag. This is a general label that acts as a category for a more specific tag value (value).
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value that is associated with the specified tag key (key). This value acts as a descriptor for the tag key. A tag value cannot be null, but it can be an empty string.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
