package dbproxyendpoint

import "strings"

#Properties: {
	// The identifier for the DB proxy endpoint. This name must be unique for all DB proxy endpoints owned by your AWS account in the specified AWS Region.
	DBProxyEndpointName: string & =~"[0-z]*" & strings.MaxRunes(64)
	// The identifier for the proxy. This name must be unique for all proxies owned by your AWS account in the specified AWS Region.
	DBProxyName: string & =~"[0-z]*" & strings.MaxRunes(64)
	// The network type of the DB proxy endpoint. The network type determines the IP version that the proxy endpoint supports.
	EndpointNetworkType?: "IPV4" | "IPV6" | "DUAL"
	// An optional set of key-value pairs to associate arbitrary data of your choosing with the DB proxy endpoint.
	Tags?: [...#TagFormat]
	// A value that indicates whether the DB proxy endpoint can be used for read/write or read-only operations.
	TargetRole?: "READ_WRITE" | "READ_ONLY"
	// VPC security group IDs to associate with the new DB proxy endpoint.
	VpcSecurityGroupIds?: [...string]
	// VPC subnet IDs to associate with the new DB proxy endpoint.
	VpcSubnetIds: [...string]
}

#TagFormat: {
	Key?: string & =~"(\\w|\\d|\\s|\\\\|-|\\.:=+-)*" & strings.MaxRunes(128)
	Value?: string & =~"(\\w|\\d|\\s|\\\\|-|\\.:=+-)*" & strings.MaxRunes(128)
}
