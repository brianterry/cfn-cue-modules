package listener

#Properties: {
	// The Amazon Resource Name (ARN) of the accelerator.
	AcceleratorArn: string
	// Client affinity lets you direct all requests from a user to the same endpoint.
	ClientAffinity?: "NONE" | "SOURCE_IP"
	PortRanges: [...#PortRange]
	// The protocol for the listener.
	Protocol: "TCP" | "UDP"
}

#PortRange: {
	FromPort: #Port
	ToPort: #Port
}
