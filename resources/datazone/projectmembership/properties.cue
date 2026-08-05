package projectmembership

#Properties: {
	Designation: #UserDesignation
	DomainIdentifier: string & =~"^dzd[-_][a-zA-Z0-9_-]{1,36}$"
	Member: #Member
	ProjectIdentifier: string & =~"^[a-zA-Z0-9_-]{1,36}$"
}

#Member: {
	UserIdentifier: string
} | {
	GroupIdentifier: string
}

#MemberIdentifierType: "USER_IDENTIFIER" | "GROUP_IDENTIFIER"

#UserDesignation: "PROJECT_OWNER" | "PROJECT_CONTRIBUTOR" | "PROJECT_CATALOG_VIEWER" | "PROJECT_CATALOG_CONSUMER" | "PROJECT_CATALOG_STEWARD"
