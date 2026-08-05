package transitgatewaymeteringpolicy

#Properties: {
	// Middle box attachment Ids
	MiddleboxAttachmentIds?: [...string]
	Tags?: [...#Tag]
	// The Id of transit gateway
	TransitGatewayId: string
}

#Tag: {
	Key: string
	Value: string
}
