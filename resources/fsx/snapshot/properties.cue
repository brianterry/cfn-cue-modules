package snapshot

#Properties: {
	Name: string
	Tags?: [...#Tag]
	VolumeId: string
}

#Tag: {
	Key: string
	Value: string
}
