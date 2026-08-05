package formtype

import "strings"

#Properties: {
	// The description of this Amazon DataZone metadata form type.
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(2048)
	// The ID of the Amazon DataZone domain in which this metadata form type is created.
	DomainIdentifier: string & =~"^dzd[-_][a-zA-Z0-9_-]{1,36}$"
	// The model of this Amazon DataZone metadata form type.
	Model: #Model
	// The name of this Amazon DataZone metadata form type.
	Name: string & =~"^(?![0-9_])\\w+$|^_\\w*[a-zA-Z0-9]\\w*$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The ID of the Amazon DataZone project that owns this metadata form type.
	OwningProjectIdentifier: string & =~"^[a-zA-Z0-9_-]{1,36}$"
	// The status of this Amazon DataZone metadata form type.
	Status?: "ENABLED" | "DISABLED"
}

#Model: {
	Smithy?: string & strings.MinRunes(1) & strings.MaxRunes(100000)
}
