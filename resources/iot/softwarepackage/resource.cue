package softwarepackage

import "github.com/brianterry/cfn-cue-modules/cfn"

// resource definition
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IoT::SoftwarePackage"
	Properties: #Properties
}
