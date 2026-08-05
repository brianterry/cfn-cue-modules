package accesspoint

import "strings"

#Properties: {
	// (optional) A string of up to 64 ASCII characters that Amazon EFS uses to ensure idempotent creation.
	ClientToken?: string & =~"^(.+)$" & strings.MinRunes(1) & strings.MaxRunes(64)
	// The ID of the S3 Files file system that the access point provides access to.
	FileSystemId: string & =~"^(arn:aws[-a-z]*:s3files:[0-9a-z-:]+:file-system/fs-[0-9a-f]{17,40}|fs-[0-9a-f]{17,40})$" & strings.MaxRunes(128)
	// The operating system user and group applied to all compute drive requests made using the access point.
	PosixUser?: #PosixUser
	// Specifies the directory on the Amazon EFS file system that the access point exposes as the root directory of your file system to NFS clients using the access point. The clients using the access point can only access the root directory and below. If the RootDirectory>Path specified does not exist, EFS creates it and applies the CreationPermissions settings when a client connects to an access point. When specifying a RootDirectory, you need to provide the Path, and the CreationPermissions is optional.
	RootDirectory?: #RootDirectory
	Tags?: [...#AccessPointTag]
}

#AccessPointTag: {
	Key?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value?: string & strings.MaxRunes(256)
}

#CreationPermissions: {
	// Specifies the POSIX group ID to apply to the RootDirectory. Accepts values from 0 to 2^32 (4294967295).
	OwnerGid: string & =~"^[0-9]+$"
	// Specifies the POSIX user ID to apply to the RootDirectory. Accepts values from 0 to 2^32 (4294967295).
	OwnerUid: string & =~"^[0-9]+$"
	// Specifies the POSIX permissions to apply to the RootDirectory, in the format of an octal number representing the file's mode bits.
	Permissions: string & =~"^[0-7]{3,4}$"
}

#PosixUser: {
	// The POSIX group ID used for all file system operations using this access point.
	Gid: string & =~"^[0-9]+$"
	// Secondary POSIX group IDs used for all file system operations using this access point.
	SecondaryGids?: [...string & =~"^[0-9]+$"]
	// The POSIX user ID used for all file system operations using this access point.
	Uid: string & =~"^[0-9]+$"
}

#RootDirectory: {
	// (Optional) Specifies the POSIX IDs and permissions to apply to the access point's RootDirectory. If the RootDirectory>Path specified does not exist, EFS creates the root directory using the CreationPermissions settings when a client connects to an access point. When specifying the CreationPermissions, you must provide values for all properties.   If you do not provide CreationPermissions and the specified RootDirectory>Path does not exist, attempts to mount the file system using the access point will fail.
	CreationPermissions?: #CreationPermissions
	// Specifies the path on the EFS file system to expose as the root directory to NFS clients using the access point to access the EFS file system. A path can have up to four subdirectories. If the specified path does not exist, you are required to provide the CreationPermissions.
	Path?: string & =~"^(\\/|(\\/(?!\\.)+[^$#<>;;`|&?{}^*/\\n]+){1,4})$" & strings.MinRunes(1) & strings.MaxRunes(100)
}
