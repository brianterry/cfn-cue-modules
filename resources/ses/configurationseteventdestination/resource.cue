package configurationseteventdestination

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SES::ConfigurationSetEventDestination
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SES::ConfigurationSetEventDestination"
	Properties: #Properties
}
