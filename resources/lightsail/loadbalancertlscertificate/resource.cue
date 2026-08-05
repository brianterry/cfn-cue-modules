package loadbalancertlscertificate

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Lightsail::LoadBalancerTlsCertificate
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Lightsail::LoadBalancerTlsCertificate"
	Properties: #Properties
}
