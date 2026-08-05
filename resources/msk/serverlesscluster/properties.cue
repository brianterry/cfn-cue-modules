package serverlesscluster

import "strings"

#Properties: {
	ClientAuthentication: #ClientAuthentication
	ClusterName: string & strings.MinRunes(1) & strings.MaxRunes(64)
	// A key-value pair to associate with a resource.
	Tags?: {...}
	VpcConfigs: [...#VpcConfig]
}

#ClientAuthentication: {
	Sasl: #Sasl
}

#Iam: {
	Enabled: bool
}

#Sasl: {
	Iam: #Iam
}

#VpcConfig: {
	SecurityGroups?: [...string]
	SubnetIds: [...string]
}
