package projectmembership

#Properties: {
	Designation: #UserDesignation
	DomainIdentifier: string & =~"^dzd[-_][a-zA-Z0-9_-]{1,36}$"
	Member: #Member
	ProjectIdentifier: string & =~"^[a-zA-Z0-9_-]{1,36}$"
}
