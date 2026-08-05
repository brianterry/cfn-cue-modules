package packagegroup

import "strings"

#Properties: {
	// The contact info of the package group.
	ContactInfo?: string & strings.MaxRunes(1000)
	// The text description of the package group.
	Description?: string & strings.MaxRunes(1000)
	// The name of the domain that contains the package group.
	DomainName: string & =~"^([a-z][a-z0-9\\-]{0,48}[a-z0-9])$" & strings.MinRunes(2) & strings.MaxRunes(50)
	// The 12-digit account ID of the AWS account that owns the domain.
	DomainOwner?: string & =~"[0-9]{12}"
	// The package origin configuration of the package group.
	OriginConfiguration?: #OriginConfiguration
	// The package group pattern that is used to gather packages.
	Pattern: string & strings.MinRunes(2) & strings.MaxRunes(520)
	// An array of key-value pairs to apply to the package group.
	Tags?: [...#Tag]
}

#OriginConfiguration: {
	// The origin configuration that is applied to the package group.
	Restrictions: #Restrictions
}

#RestrictionType: {
	Repositories?: [...string]
	RestrictionMode: "ALLOW" | "BLOCK" | "ALLOW_SPECIFIC_REPOSITORIES" | "INHERIT"
}

#Restrictions: {
	// The external upstream restriction determines if new package versions can be ingested or retained from external connections.
	ExternalUpstream?: #RestrictionType
	// The internal upstream restriction determines if new package versions can be ingested or retained from upstream repositories.
	InternalUpstream?: #RestrictionType
	// The publish restriction determines if new package versions can be published.
	Publish?: #RestrictionType
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 1 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
