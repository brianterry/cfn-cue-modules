package recordset

#Properties: {
	AliasTarget?: #AliasTarget
	CidrRoutingConfig?: #CidrRoutingConfig
	Comment?: string
	Failover?: string
	GeoLocation?: #GeoLocation
	GeoProximityLocation?: #GeoProximityLocation
	HealthCheckId?: string
	HostedZoneId?: string
	HostedZoneName?: string
	MultiValueAnswer?: bool
	Name: string
	Region?: string
	ResourceRecords?: [...string]
	SetIdentifier?: string
	TTL?: string
	Type: string
	Weight?: int
}

#AliasTarget: {
	DNSName: string
	EvaluateTargetHealth?: bool
	HostedZoneId: string
}

#CidrRoutingConfig: {
	CollectionId: string
	LocationName: string
}

#Coordinates: {
	Latitude: string
	Longitude: string
}

#GeoLocation: {
	ContinentCode?: string
	CountryCode?: string
	SubdivisionCode?: string
}

#GeoProximityLocation: {
	AWSRegion?: string
	Bias?: int
	Coordinates?: #Coordinates
	LocalZoneGroup?: string
}
