package certificate

import "github.com/brianterry/cfn-cue-modules/cfn"

// Use the AWS::IoT::Certificate resource to declare an AWS IoT X.509 certificate.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoT::Certificate"
	Properties: #Properties
}
