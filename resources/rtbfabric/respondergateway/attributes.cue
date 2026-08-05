package respondergateway

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	GatewayId: #GatewayId
	Arn: #Arn
	ResponderGatewayStatus: #ResponderGatewayStatus
	CreatedTimestamp: #CreatedTimestamp
	UpdatedTimestamp: #UpdatedTimestamp
	ExternalInboundEndpoint: #ExternalInboundEndpoint
	CertificateAssociationStatus: #CertificateAssociationStatus
}
