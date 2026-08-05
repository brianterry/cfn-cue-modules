package localgatewayroute

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for Local Gateway Route which describes a route for a local gateway route table.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::LocalGatewayRoute"
	Properties: #Properties
}
