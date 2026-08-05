package terms

#Properties: {
	ClientId?: string
	Enforcement: #TermsEnforcementType
	Links: #LinksType
	TermsName: #TermsNameType
	TermsSource: #TermsSourceType
	UserPoolId: string
}

#LinksType: {...}

#TermsEnforcementType: "NONE"

#TermsIdType: string & =~"^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[4][0-9a-fA-F]{3}-[89abAB][0-9a-fA-F]{3}-[0-9a-fA-F]{12}$"

#TermsNameType: string & =~"^(terms-of-use|privacy-policy)$"

#TermsSourceType: "LINK"
