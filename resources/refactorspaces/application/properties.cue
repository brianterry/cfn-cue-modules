package application

import "strings"

#Properties: {
	ApiGatewayProxy?: #ApiGatewayProxyInput
	EnvironmentIdentifier: string & =~"^env-([0-9A-Za-z]{10}$)" & strings.MinRunes(14) & strings.MaxRunes(14)
	Name: string & =~"^(?!app-)[a-zA-Z0-9]+[a-zA-Z0-9-_ ]+$" & strings.MinRunes(3) & strings.MaxRunes(63)
	ProxyType: #ProxyType
	// Metadata that you can assign to help organize the frameworks that you create. Each tag is a key-value pair.
	Tags?: [...#Tag]
	VpcId: string & =~"^vpc-[-a-f0-9]{8}([-a-f0-9]{9})?$" & strings.MinRunes(12) & strings.MaxRunes(21)
}

#ApiGatewayEndpointType: "REGIONAL" | "PRIVATE"

#ApiGatewayProxyInput: {
	EndpointType?: #ApiGatewayEndpointType
	StageName?: string & =~"^[-a-zA-Z0-9_]*$" & strings.MinRunes(1) & strings.MaxRunes(128)
}

#ProxyType: "API_GATEWAY"

#Tag: {
	// A string used to identify this tag
	Key: string & =~"^(?!aws:).+" & strings.MinRunes(1) & strings.MaxRunes(128)
	// A string containing the value for the tag
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
