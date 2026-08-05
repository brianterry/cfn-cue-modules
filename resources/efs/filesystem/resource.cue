package filesystem

import "github.com/brianterry/cfn-cue-modules/cfn"

// The ``AWS::EFS::FileSystem`` resource creates a new, empty file system in EFSlong (EFS). You must create a mount target ([AWS::EFS::MountTarget](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-efs-mounttarget.html)) to mount your EFS file system on an EC2 or other AWS cloud compute resource.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EFS::FileSystem"
	Properties: #Properties
}
