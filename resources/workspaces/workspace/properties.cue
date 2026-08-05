package workspace

#Properties: {
	BundleId: string
	DirectoryId: string
	RootVolumeEncryptionEnabled?: bool
	Tags?: [...#Tag]
	UserName: string
	UserVolumeEncryptionEnabled?: bool
	VolumeEncryptionKey?: string
	WorkspaceProperties?: #WorkspaceProperties
}

#Tag: {
	Key: string
	Value: string
}

#WorkspaceProperties: {
	ComputeTypeName?: string
	RootVolumeSizeGib?: int
	RunningMode?: string
	RunningModeAutoStopTimeoutInMinutes?: int
	UserVolumeSizeGib?: int
}
