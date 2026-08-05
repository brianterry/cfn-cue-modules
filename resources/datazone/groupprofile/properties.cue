package groupprofile

#Properties: {
	// The identifier of the Amazon DataZone domain in which the group profile would be created.
	DomainIdentifier: string & =~"^dzd[-_][a-zA-Z0-9_-]{1,36}$"
	// The ID of the group.
	GroupIdentifier?: string & =~"(^([0-9a-f]{10}-|)[A-Fa-f0-9]{8}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{12}$|[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\t\\n\\r  ]+)"
	GroupType?: #GroupType
	// The ARN of the role principal for the group profile.
	RolePrincipalArn?: string
	Status?: #GroupProfileStatus
}
