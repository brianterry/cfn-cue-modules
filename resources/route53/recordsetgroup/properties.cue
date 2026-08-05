package recordsetgroup

#Properties: {
	Comment?: string
	HostedZoneId?: string
	HostedZoneName?: string
	RecordSets?: [...#RecordSet]
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

#RecordSet: {
	AliasTarget?: #AliasTarget
	CidrRoutingConfig?: #CidrRoutingConfig
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
