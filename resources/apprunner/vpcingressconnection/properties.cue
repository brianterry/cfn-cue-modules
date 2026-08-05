package vpcingressconnection

import "strings"

#Properties: {
	IngressVpcConfiguration: #IngressVpcConfiguration
	// The Amazon Resource Name (ARN) of the service.
	ServiceArn: string & =~"arn:aws(-[\\w]+)*:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[0-9]{12}:(\\w|/|-){1,1011}" & strings.MinRunes(1) & strings.MaxRunes(1011)
	Tags?: [...#Tag]
	// The customer-provided Vpc Ingress Connection name.
	VpcIngressConnectionName?: string & =~"[A-Za-z0-9][A-Za-z0-9\\-_]{3,39}" & strings.MinRunes(4) & strings.MaxRunes(40)
}

#IngressVpcConfiguration: {
	// The ID of the VPC endpoint that your App Runner service connects to.
	VpcEndpointId: string
	// The ID of the VPC that the VPC endpoint is used in.
	VpcId: string
}

#Tag: {
	Key?: string
	Value?: string
}
