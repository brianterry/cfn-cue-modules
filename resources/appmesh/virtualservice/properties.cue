package virtualservice

#Properties: {
	MeshName: string
	MeshOwner?: string
	Spec: #VirtualServiceSpec
	Tags?: [...#Tag]
	VirtualServiceName: string
}

#Tag: {
	Key: string
	Value: string
}

#VirtualNodeServiceProvider: {
	VirtualNodeName: string
}

#VirtualRouterServiceProvider: {
	VirtualRouterName: string
}

#VirtualServiceProvider: {
	VirtualNode?: #VirtualNodeServiceProvider
	VirtualRouter?: #VirtualRouterServiceProvider
}

#VirtualServiceSpec: {
	Provider?: #VirtualServiceProvider
}
