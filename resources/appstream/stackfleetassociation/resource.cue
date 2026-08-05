package stackfleetassociation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::AppStream::StackFleetAssociation
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AppStream::StackFleetAssociation"
	Properties: #Properties
}
