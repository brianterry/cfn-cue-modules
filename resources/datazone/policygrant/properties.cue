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

#AllDomainUnitsGrantFilter: {...}

#AllUsersGrantFilter: {...}

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

#DomainUnitDesignation: "OWNER"

#DomainUnitFilterForProject: {
	DomainUnit: string & =~"^[a-z0-9_\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
	IncludeChildDomainUnits?: bool
}

#DomainUnitGrantFilter: {
	AllDomainUnitsGrantFilter: #AllDomainUnitsGrantFilter
}

#DomainUnitPolicyGrantPrincipal: {
	DomainUnitDesignation?: #DomainUnitDesignation
	DomainUnitGrantFilter?: #DomainUnitGrantFilter
	DomainUnitIdentifier?: string & =~"^[a-z0-9_\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
}

#GroupPolicyGrantPrincipal: {
	GroupIdentifier: string & =~"(^([0-9a-f]{10}-|)[A-Fa-f0-9]{8}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{12}$|[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\t\\n\\r  ]+)"
}

#ManagedPolicyType: "CREATE_DOMAIN_UNIT" | "OVERRIDE_DOMAIN_UNIT_OWNERS" | "ADD_TO_PROJECT_MEMBER_POOL" | "OVERRIDE_PROJECT_OWNERS" | "CREATE_GLOSSARY" | "CREATE_FORM_TYPE" | "CREATE_ASSET_TYPE" | "CREATE_PROJECT" | "CREATE_ENVIRONMENT_PROFILE" | "DELEGATE_CREATE_ENVIRONMENT_PROFILE" | "CREATE_ENVIRONMENT" | "CREATE_ENVIRONMENT_FROM_BLUEPRINT" | "CREATE_PROJECT_FROM_PROJECT_PROFILE"

#OverrideDomainUnitOwnersPolicyGrantDetail: {
	IncludeChildDomainUnits?: bool
}

#OverrideProjectOwnersPolicyGrantDetail: {
	IncludeChildDomainUnits?: bool
}

#PolicyGrantDetail: {
	CreateDomainUnit: #CreateDomainUnitPolicyGrantDetail
} | {
	OverrideDomainUnitOwners: #OverrideDomainUnitOwnersPolicyGrantDetail
} | {
	AddToProjectMemberPool: #AddToProjectMemberPoolPolicyGrantDetail
} | {
	OverrideProjectOwners: #OverrideProjectOwnersPolicyGrantDetail
} | {
	CreateGlossary: #CreateGlossaryPolicyGrantDetail
} | {
	CreateFormType: #CreateFormTypePolicyGrantDetail
} | {
	CreateAssetType: #CreateAssetTypePolicyGrantDetail
} | {
	CreateProject: #CreateProjectPolicyGrantDetail
} | {
	CreateEnvironmentProfile: #CreateEnvironmentProfilePolicyGrantDetail
} | {
	DelegateCreateEnvironmentProfile: #Unit
} | {
	CreateEnvironment: #Unit
} | {
	CreateEnvironmentFromBlueprint: #Unit
} | {
	CreateProjectFromProjectProfile: #CreateProjectFromProjectProfilePolicyGrantDetail
}

#PolicyGrantPrincipal: {
	User: #UserPolicyGrantPrincipal
} | {
	Group: #GroupPolicyGrantPrincipal
} | {
	Project: #ProjectPolicyGrantPrincipal
} | {
	DomainUnit: #DomainUnitPolicyGrantPrincipal
}

#ProjectDesignation: "OWNER" | "CONTRIBUTOR" | "PROJECT_CATALOG_STEWARD"

#ProjectGrantFilter: {
	DomainUnitFilter: #DomainUnitFilterForProject
}

#ProjectPolicyGrantPrincipal: {
	ProjectDesignation?: #ProjectDesignation
	ProjectGrantFilter?: #ProjectGrantFilter
	ProjectIdentifier?: string & =~"^[a-zA-Z0-9_-]{1,36}$"
}

#TargetEntityType: "DOMAIN_UNIT" | "ENVIRONMENT_BLUEPRINT_CONFIGURATION" | "ENVIRONMENT_PROFILE" | "ASSET_TYPE"

#Unit: {...}

#UserPolicyGrantPrincipal: {
	UserIdentifier: string & =~"(^([0-9a-f]{10}-|)[A-Fa-f0-9]{8}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{12}$|^[a-zA-Z_0-9+=,.@-]+$|^arn:aws[^:]*:iam::\\d{12}:.+$)"
} | {
	AllUsersGrantFilter: #AllUsersGrantFilter
}
