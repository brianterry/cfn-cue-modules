package accesspoint

import "github.com/brianterry/cfn-cue-modules/cfn"

// The ``AWS::EFS::AccessPoint`` resource creates an EFS access point. An access point is an application-specific view into an EFS file system that applies an operating system user and group, and a file system path, to any file system request made through the access point. The operating system user and group override any identity information provided by the NFS client. The file system path is exposed as the access point's root directory. Applications using the access point can only access data in its own directory and below. To learn more, see [Mounting a file system using EFS access points](https://docs.aws.amazon.com/efs/latest/ug/efs-access-points.html).
 This operation requires permissions for the ``elasticfilesystem:CreateAccessPoint`` action.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EFS::AccessPoint"
	Properties: #Properties
}
