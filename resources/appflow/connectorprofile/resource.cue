package connectorprofile

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::AppFlow::ConnectorProfile
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AppFlow::ConnectorProfile"
	Properties: #Properties
}
