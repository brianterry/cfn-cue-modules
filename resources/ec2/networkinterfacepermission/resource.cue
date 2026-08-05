package networkinterfacepermission

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::EC2::NetworkInterfacePermission
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::NetworkInterfacePermission"
	Properties: #Properties
}
