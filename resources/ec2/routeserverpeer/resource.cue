package routeserverpeer

import "github.com/brianterry/cfn-cue-modules/cfn"

// VPC Route Server Peer
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::RouteServerPeer"
	Properties: #Properties
}
