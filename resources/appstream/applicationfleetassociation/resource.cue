package applicationfleetassociation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::AppStream::ApplicationFleetAssociation
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AppStream::ApplicationFleetAssociation"
	Properties: #Properties
}
