package environmentec2

#Properties: {
	AutomaticStopTimeMinutes?: int
	ConnectionType?: string
	Description?: string
	ImageId: string
	InstanceType: string
	Name?: string
	OwnerArn?: string
	Repositories?: [...#Repository]
	SubnetId?: string
	Tags?: [...#Tag]
}

#Repository: {
	PathComponent: string
	RepositoryUrl: string
}

#Tag: {
	Key: string
	Value: string
}
