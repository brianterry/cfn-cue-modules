package workloadidentity

import "strings"

#Properties: {
	// The list of allowed OAuth2 return URLs for resources associated with this workload identity.
	AllowedResourceOauth2ReturnUrls?: [...string & =~"\\w+:(/?/?)[^\\s]+" & strings.MinRunes(1) & strings.MaxRunes(2048)]
	// The name of the workload identity. The name must be unique within your account.
	Name: string & =~"[A-Za-z0-9_.-]+" & strings.MinRunes(3) & strings.MaxRunes(255)
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#Tag: {
	Key: string & =~"^(?!aws:)[a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
