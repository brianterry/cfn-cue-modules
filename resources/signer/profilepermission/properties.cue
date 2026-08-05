package profilepermission

#Properties: {
	Action: string
	Principal: string
	ProfileName: string & =~"^[0-9a-zA-Z_]{2,64}$"
	ProfileVersion?: string & =~"^[0-9a-zA-Z]{10}$"
	StatementId: string
}
