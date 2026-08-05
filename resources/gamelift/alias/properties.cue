package alias

import "strings"

#Properties: {
	// A human-readable description of the alias.
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	// A descriptive label that is associated with an alias. Alias names do not need to be unique.
	Name: string & =~".*\\S.*" & strings.MinRunes(1) & strings.MaxRunes(1024)
	// A routing configuration that specifies where traffic is directed for this alias, such as to a fleet or to a message.
	RoutingStrategy: #RoutingStrategy
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#RoutingStrategy: {
	// A unique identifier for a fleet that the alias points to. If you specify SIMPLE for the Type property, you must specify this property.
	FleetId?: string & =~"^[a-z]*fleet-[a-zA-Z0-9\\-]+"
	// The message text to be used with a terminal routing strategy. If you specify TERMINAL for the Type property, you must specify this property.
	Message?: string
	// Simple routing strategy. The alias resolves to one specific fleet. Use this type when routing to active fleets.
	Type: "SIMPLE" | "TERMINAL"
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
