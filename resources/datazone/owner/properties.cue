package owner

#Properties: {
	// The ID of the domain in which you want to add the entity owner.
	DomainIdentifier: string & =~"^dzd[-_][a-zA-Z0-9_-]{1,36}$"
	// The ID of the entity to which you want to add an owner.
	EntityIdentifier: string
	// The type of an entity.
	EntityType: "DOMAIN_UNIT"
	// The owner that you want to add to the entity.
	Owner: #OwnerProperties
}

#OwnerGroupProperties: {
	// The ID of the domain unit owners group.
	GroupIdentifier?: string & =~"(^([0-9a-f]{10}-|)[A-Fa-f0-9]{8}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{12}$|[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}\\t\\n\\r ]+)"
}

#OwnerGroupPropertiesOutput: {
	// The ID of the domain unit owners group.
	GroupId?: string
}

#OwnerPropertiesOutput: {
	Group?: #OwnerGroupPropertiesOutput
	User?: #OwnerUserPropertiesOutput
}

#OwnerUserProperties: {
	// The ID of the owner user.
	UserIdentifier?: string & =~"(^([0-9a-f]{10}-|)[A-Fa-f0-9]{8}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{12}$|^[a-zA-Z_0-9+=,.@-]+$|^arn:aws:iam::\\d{12}:.+$)"
}

#OwnerUserPropertiesOutput: {
	// The ID of the owner user.
	UserId?: string
}
