package securityconfiguration

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Schema of AWS::EMRContainers::SecurityConfiguration Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EMRContainers::SecurityConfiguration"
	Properties: #Properties
}
