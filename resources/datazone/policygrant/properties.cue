package policygrant

import "strings"

#Properties: {
	Detail?: #PolicyGrantDetail
	DomainIdentifier: string & =~"^dzd[-_][a-zA-Z0-9_-]{1,36}$"
	EntityIdentifier: string
	EntityType: #TargetEntityType
	PolicyType: #ManagedPolicyType
	Principal?: #PolicyGrantPrincipal
}

#AddToProjectMemberPoolPolicyGrantDetail: {
	IncludeChildDomainUnits?: bool
}

#CreateAssetTypePolicyGrantDetail: {
	IncludeChildDomainUnits?: bool
}

#CreateDomainUnitPolicyGrantDetail: {
	IncludeChildDomainUnits?: bool
}

#CreateEnvironmentProfilePolicyGrantDetail: {
	DomainUnitId?: string & =~"^[a-z0-9_\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
}

#CreateFormTypePolicyGrantDetail: {
	IncludeChildDomainUnits?: bool
}

#CreateGlossaryPolicyGrantDetail: {
	IncludeChildDomainUnits?: bool
}

#CreateProjectFromProjectProfilePolicyGrantDetail: {
	IncludeChildDomainUnits?: bool
	ProjectProfiles?: [...string]
}

#CreateProjectPolicyGrantDetail: {
	IncludeChildDomainUnits?: bool
}

#DomainUnitFilterForProject: {
	DomainUnit: string & =~"^[a-z0-9_\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
	IncludeChildDomainUnits?: bool
}

#DomainUnitPolicyGrantPrincipal: {
	DomainUnitDesignation?: #DomainUnitDesignation
	DomainUnitGrantFilter?: #DomainUnitGrantFilter
	DomainUnitIdentifier?: string & =~"^[a-z0-9_\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
}

#OverrideDomainUnitOwnersPolicyGrantDetail: {
	IncludeChildDomainUnits?: bool
}

#OverrideProjectOwnersPolicyGrantDetail: {
	IncludeChildDomainUnits?: bool
}

#ProjectPolicyGrantPrincipal: {
	ProjectDesignation?: #ProjectDesignation
	ProjectGrantFilter?: #ProjectGrantFilter
	ProjectIdentifier?: string & =~"^[a-zA-Z0-9_-]{1,36}$"
}
