package firewall

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	FirewallArn: #ResourceArn
	FirewallId: string & =~"^([0-9a-f]{8})-([0-9a-f]{4}-){3}([0-9a-f]{12})$" & strings.MinRunes(36) & strings.MaxRunes(36)
	TransitGatewayAttachmentId: string & =~"^tgw-attach-[0-9a-z]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	EndpointIds: [...#EndpointId]
}
