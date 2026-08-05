package connector

import "strings"

#Properties: {
	// The name of the connector. The name is unique for each ConnectorRegistration in your AWS account.
	ConnectorLabel?: string & =~"[a-zA-Z0-9][\\w!@#.-]+" & strings.MaxRunes(512)
	// Contains information about the configuration of the connector being registered.
	ConnectorProvisioningConfig: #ConnectorProvisioningConfig
	// The provisioning type of the connector. Currently the only supported value is LAMBDA.
	ConnectorProvisioningType: string & =~"[a-zA-Z0-9][\\w!@#.-]+" & strings.MinRunes(1) & strings.MaxRunes(256)
	// A description about the connector that's being registered.
	Description?: string & =~"[\\s\\w/!@#+=.-]*" & strings.MaxRunes(2048)
}

#ConnectorProvisioningConfig: {
	// Contains information about the configuration of the lambda which is being registered as the connector.
	Lambda?: #LambdaConnectorProvisioningConfig
}

#LambdaConnectorProvisioningConfig: {
	// Lambda ARN of the connector being registered.
	LambdaArn: string & =~"arn:*:.*:.*:[0-9]+:.*" & strings.MaxRunes(512)
}
