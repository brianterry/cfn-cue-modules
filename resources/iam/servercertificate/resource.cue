package servercertificate

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::IAM::ServerCertificate
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IAM::ServerCertificate"
	Properties: #Properties
}
