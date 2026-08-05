package directoryconfig

#Properties: {
	CertificateBasedAuthProperties?: #CertificateBasedAuthProperties
	DirectoryName: string
	OrganizationalUnitDistinguishedNames: [...string]
	ServiceAccountCredentials: #ServiceAccountCredentials
}

#CertificateBasedAuthProperties: {
	CertificateAuthorityArn?: string
	Status?: string
}

#ServiceAccountCredentials: {
	AccountName: string
	AccountPassword: string
}
