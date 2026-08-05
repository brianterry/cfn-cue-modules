package loadbalancer

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Lightsail::LoadBalancer
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Lightsail::LoadBalancer"
	Properties: #Properties
}
