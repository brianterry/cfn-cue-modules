package userpoolresourceserver

#Properties: {
	Identifier: string
	Name: string
	Scopes?: [...#ResourceServerScopeType]
	UserPoolId: string
}

#ResourceServerScopeType: {
	ScopeDescription: string
	ScopeName: string
}
