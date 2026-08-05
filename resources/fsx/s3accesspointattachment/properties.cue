package s3accesspointattachment

import "strings"

#Properties: {
	// The name of the S3 access point attachment; also used for the name of the S3 access point.
	Name: string & =~"^(?=[a-z0-9])[a-z0-9-]{1,48}[a-z0-9]$" & strings.MinRunes(3) & strings.MaxRunes(50)
	// The OntapConfiguration of the S3 access point attachment.
	OntapConfiguration?: #S3AccessPointOntapConfiguration
	// The OpenZFSConfiguration of the S3 access point attachment.
	OpenZFSConfiguration?: #S3AccessPointOpenZFSConfiguration
	// The type of Amazon FSx volume that the S3 access point is attached to.
	Type: "OPENZFS" | "ONTAP"
}

#FileSystemGID: {
	// The GID of the file system user.
	Gid: number & >=0 & <=4.294967295e+09
}

#OntapFileSystemIdentity: {
	// Specifies the FSx for ONTAP user identity type, accepts either UNIX or WINDOWS.
	Type: "UNIX" | "WINDOWS"
	// Specifies the properties of the file system UNIX user.
	UnixUser?: #OntapUnixFileSystemUser
	// Specifies the properties of the file system Windows user.
	WindowsUser?: #OntapWindowsFileSystemUser
}

#OntapUnixFileSystemUser: {
	// The name of the UNIX user.
	Name: string & strings.MinRunes(1) & strings.MaxRunes(256)
}

#OntapWindowsFileSystemUser: {
	// The name of the Windows user.
	Name: string & strings.MinRunes(1) & strings.MaxRunes(256)
}

#OpenZFSFileSystemIdentity: {
	// Specifies the UID and GIDs of the file system POSIX user.
	PosixUser: #OpenZFSPosixFileSystemUser
	// Specifies the FSx for OpenZFS user identity type, accepts only POSIX.
	Type: "POSIX"
}

#OpenZFSPosixFileSystemUser: {
	// The GID of the file system user.
	Gid: number & >=0 & <=4.294967295e+09
	// The list of secondary GIDs for the file system user.
	SecondaryGids?: [...#FileSystemGID]
	// The UID of the file system user.
	Uid: number & >=0 & <=4.294967295e+09
}

#S3AccessPoint: {
	// The S3 access point's alias.
	Alias?: string & =~"^[0-9a-z\\\\-]{1,63}" & strings.MinRunes(1) & strings.MaxRunes(63)
	// The S3 access point's policy.
	Policy?: {...}
	// The S3 access point's ARN.
	ResourceARN?: string & =~"^arn:[^:]{1,63}:[^:]{0,63}:[^:]{0,63}:(?:|\\d{12}):[^/].{0,1023}$" & strings.MinRunes(8) & strings.MaxRunes(1024)
	// The S3 access point's virtual private cloud (VPC) configuration.
	VpcConfiguration?: #S3AccessPointVpcConfiguration
}

#S3AccessPointOntapConfiguration: {
	// The file system identity used to authorize file access requests made using the S3 access point.
	FileSystemIdentity: #OntapFileSystemIdentity
	// The ID of the FSx for ONTAP volume that the S3 access point is attached to.
	VolumeId: string & =~"^(fsvol-[0-9a-f]{17,})$" & strings.MinRunes(23) & strings.MaxRunes(23)
}

#S3AccessPointOpenZFSConfiguration: {
	// The file system identity used to authorize file access requests made using the S3 access point.
	FileSystemIdentity: #OpenZFSFileSystemIdentity
	// The ID of the FSx for OpenZFS volume that the S3 access point is attached to.
	VolumeId: string & =~"^(fsvol-[0-9a-f]{17,})$" & strings.MinRunes(23) & strings.MaxRunes(23)
}

#S3AccessPointVpcConfiguration: {
	// Specifies the virtual private cloud (VPC) for the S3 access point VPC configuration, if one exists.
	VpcId: string & =~"^(vpc-[0-9a-f]{8,})$" & strings.MinRunes(12) & strings.MaxRunes(21)
}
