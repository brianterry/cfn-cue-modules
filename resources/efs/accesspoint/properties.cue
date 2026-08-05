package accesspoint

import "strings"

#Properties: {
	// An array of key-value pairs to apply to this resource.
	// For more information, see [Tag](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resource-tags.html).
	AccessPointTags?: [...#AccessPointTag]
	// The opaque string specified in the request to ensure idempotent creation.
	ClientToken?: string
	// The ID of the EFS file system that the access point applies to. Accepts only the ID format for input when specifying a file system, for example ``fs-0123456789abcedf2``.
	FileSystemId: string
	// The full POSIX identity, including the user ID, group ID, and secondary group IDs on the access point that is used for all file operations by NFS clients using the access point.
	PosixUser?: #PosixUser
	// The directory on the EFS file system that the access point exposes as the root directory to NFS clients using the access point.
	RootDirectory?: #RootDirectory
}

#AccessPointTag: {
	// The tag key (String). The key can't start with ``aws:``.
	Key?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value of the tag key.
	Value?: string & strings.MinRunes(1) & strings.MaxRunes(256)
}

#CreationInfo: {
	// Specifies the POSIX group ID to apply to the ``RootDirectory``. Accepts values from 0 to 2^32 (4294967295).
	OwnerGid: string
	// Specifies the POSIX user ID to apply to the ``RootDirectory``. Accepts values from 0 to 2^32 (4294967295).
	OwnerUid: string
	// Specifies the POSIX permissions to apply to the ``RootDirectory``, in the format of an octal number representing the file's mode bits.
	Permissions: string & =~"^[0-7]{3,4}$"
}

#PosixUser: {
	// The POSIX group ID used for all file system operations using this access point.
	Gid: string
	// Secondary POSIX group IDs used for all file system operations using this access point.
	SecondaryGids?: [...string]
	// The POSIX user ID used for all file system operations using this access point.
	Uid: string
}

#RootDirectory: {
	// (Optional) Specifies the POSIX IDs and permissions to apply to the access point's ``RootDirectory``. If the ``RootDirectory`` > ``Path`` specified does not exist, EFS creates the root directory using the ``CreationInfo`` settings when a client connects to an access point. When specifying the ``CreationInfo``, you must provide values for all properties.
	// If you do not provide ``CreationInfo`` and the specified ``RootDirectory`` > ``Path`` does not exist, attempts to mount the file system using the access point will fail.
	CreationInfo?: #CreationInfo
	// Specifies the path on the EFS file system to expose as the root directory to NFS clients using the access point to access the EFS file system. A path can have up to four subdirectories. If the specified path does not exist, you are required to provide the ``CreationInfo``.
	Path?: string & strings.MinRunes(1) & strings.MaxRunes(100)
}
