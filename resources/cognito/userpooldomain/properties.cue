package userpooldomain

#Properties: {
	CustomDomainConfig?: #CustomDomainConfigType
	Domain: string
	ManagedLoginVersion?: int
	Routing?: #RoutingType
	UserPoolId: string
}

#CustomDomainConfigType: {
	CertificateArn?: string
	SecurityPolicy?: string
}

#FailoverType: {
	PrimaryRoute53HealthCheckId: string
	SecondaryRegion: string
}

#RoutingType: {
	Failover?: #FailoverType
}
