package channel

import "strings"

#Properties: {
	ChannelName?: string & =~"(^(?!_{2}))(^[a-zA-Z0-9_]+$)" & strings.MinRunes(1) & strings.MaxRunes(128)
	ChannelStorage?: #ChannelStorage
	RetentionPeriod?: #RetentionPeriod
	Tags?: [...#Tag]
}

#ChannelStorage: {
	CustomerManagedS3?: #CustomerManagedS3
	ServiceManagedS3?: #ServiceManagedS3
}

#CustomerManagedS3: {
	Bucket: string & =~"^[a-zA-Z0-9.\\-_]*$" & strings.MinRunes(3) & strings.MaxRunes(255)
	KeyPrefix?: string & =~"^[a-zA-Z0-9!_.*'()/{}:-]*/$" & strings.MinRunes(1) & strings.MaxRunes(255)
	RoleArn: string & strings.MinRunes(20) & strings.MaxRunes(2048)
}

#RetentionPeriod: {
	NumberOfDays?: int & >=1 & <=2147483647
	Unlimited?: bool
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
