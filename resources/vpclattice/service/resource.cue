package service

import "github.com/brianterry/cfn-cue-modules/cfn"

// A service is any software application that can run on instances containers, or serverless functions within an account or virtual private cloud (VPC).
#Resource: cfn.#ResourceBase & {
	Type: "AWS::VpcLattice::Service"
	Properties: #Properties
}
