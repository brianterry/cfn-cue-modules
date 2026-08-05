package workerconfiguration

import "strings"

#Properties: {
	// A summary description of the worker configuration.
	Description?: string & strings.MaxRunes(1024)
	// The name of the worker configuration.
	Name: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// Base64 encoded contents of connect-distributed.properties file.
	PropertiesFileContent: string
	// A collection of tags associated with a resource
	Tags?: [...#Tag]
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MaxRunes(256)
}
