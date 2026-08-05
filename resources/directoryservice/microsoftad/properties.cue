package microsoftad

#Properties: {
	CreateAlias?: bool
	Edition?: string
	EnableSso?: bool
	Name: string
	Password: string
	ShortName?: string
	VpcSettings: #VpcSettings
}

#VpcSettings: {
	SubnetIds: [...string]
	VpcId: string
}
