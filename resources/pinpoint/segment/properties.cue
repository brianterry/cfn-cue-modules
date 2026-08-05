package segment

#Properties: {
	ApplicationId: string
	Dimensions?: #SegmentDimensions
	Name: string
	SegmentGroups?: #SegmentGroups
	Tags?: {...}
}

#Behavior: {
	Recency?: #Recency
}

#Coordinates: {
	Latitude: number
	Longitude: number
}

#Demographic: {
	AppVersion?: #SetDimension
	Channel?: #SetDimension
	DeviceType?: #SetDimension
	Make?: #SetDimension
	Model?: #SetDimension
	Platform?: #SetDimension
}

#GPSPoint: {
	Coordinates: #Coordinates
	RangeInKilometers: number
}

#Groups: {
	Dimensions?: [...#SegmentDimensions]
	SourceSegments?: [...#SourceSegments]
	SourceType?: string
	Type?: string
}

#Location: {
	Country?: #SetDimension
	GPSPoint?: #GPSPoint
}

#Recency: {
	Duration: string
	RecencyType: string
}

#SegmentDimensions: {
	Attributes?: {...}
	Behavior?: #Behavior
	Demographic?: #Demographic
	Location?: #Location
	Metrics?: {...}
	UserAttributes?: {...}
}

#SegmentGroups: {
	Groups?: [...#Groups]
	Include?: string
}

#SetDimension: {
	DimensionType?: string
	Values?: [...string]
}

#SourceSegments: {
	Id: string
	Version?: int
}
