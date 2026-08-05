package softwarepackageversion

import "github.com/brianterry/cfn-cue-modules/cfn"

// resource definition
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoT::SoftwarePackageVersion"
	Properties: #Properties
}
