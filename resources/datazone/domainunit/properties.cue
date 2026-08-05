package domainunit

import "strings"

#Properties: {
	// The description of the domain unit.
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(2048)
	// The ID of the domain where you want to create a domain unit.
	DomainIdentifier: string & =~"^dzd[-_][a-zA-Z0-9_-]{1,36}$"
	// The name of the domain unit.
	Name: string & =~"^[\\w -]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The ID of the parent domain unit.
	ParentDomainUnitIdentifier: string & =~"^[a-z0-9_-]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
}

#DomainUnitGroupProperties: {
	// The ID of the domain unit group.
	GroupId?: string
}

#DomainUnitOwnerProperties: {
	Group?: #DomainUnitGroupProperties
	User?: #DomainUnitUserProperties
}

#DomainUnitUserProperties: {
	// The ID of the domain unit user.
	UserId?: string
}
