package connectiongroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// The connection group for your distribution tenants. When you first create a distribution tenant and you don't specify a connection group, CloudFront will automatically create a default connection group for you. When you create a new distribution tenant and don't specify a connection group, the default one will be associated with your distribution tenant.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CloudFront::ConnectionGroup"
	Properties: #Properties
}
