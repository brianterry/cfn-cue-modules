package mounttarget

import "github.com/brianterry/cfn-cue-modules/cfn"

// The ``AWS::EFS::MountTarget`` resource is an Amazon EFS resource that creates a mount target for an EFS file system. You can then mount the file system on Amazon EC2 instances or other resources by using the mount target.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EFS::MountTarget"
	Properties: #Properties
}
