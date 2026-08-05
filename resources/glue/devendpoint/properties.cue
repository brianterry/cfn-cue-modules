package devendpoint

#Properties: {
	Arguments?: {...}
	EndpointName?: string
	ExtraJarsS3Path?: string
	ExtraPythonLibsS3Path?: string
	GlueVersion?: string
	NumberOfNodes?: int
	NumberOfWorkers?: int
	PublicKey?: string
	PublicKeys?: [...string]
	RoleArn: string
	SecurityConfiguration?: string
	SecurityGroupIds?: [...string]
	SubnetId?: string
	Tags?: {...}
	WorkerType?: string
}
