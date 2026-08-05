package virtualrouter

#Properties: {
	MeshName: string
	MeshOwner?: string
	Spec: #VirtualRouterSpec
	Tags?: [...#Tag]
	VirtualRouterName?: string
}

#PortMapping: {
	Port: int
	Protocol: string
}

#Tag: {
	Key: string
	Value: string
}

#VirtualRouterListener: {
	PortMapping: #PortMapping
}

#VirtualRouterSpec: {
	Listeners: [...#VirtualRouterListener]
}
