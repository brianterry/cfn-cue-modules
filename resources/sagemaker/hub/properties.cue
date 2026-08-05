package hub

import "strings"

#Properties: {
	// A description of the hub.
	HubDescription: string & =~".*" & strings.MinRunes(0) & strings.MaxRunes(1023)
	// The display name of the hub.
	HubDisplayName?: string & =~".*" & strings.MinRunes(0) & strings.MaxRunes(255)
	// The name of the hub.
	HubName: string & =~"^[a-zA-Z0-9](-*[a-zA-Z0-9]){0,62}$" & strings.MinRunes(0) & strings.MaxRunes(63)
	// The searchable keywords for the hub.
	HubSearchKeywords?: [...string & =~"^[^A-Z]*$" & strings.MinRunes(0) & strings.MaxRunes(255)]
	// The Amazon S3 storage configuration for the hub.
	S3StorageConfig?: {
		S3OutputPath?: string & =~"^(https|s3)://([^/]+)/?(.*)$" & strings.MinRunes(0) & strings.MaxRunes(1024)
	}
	// Tags to associate with the hub.
	Tags?: [...#Tag]
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
