package vectorbucketpolicy

#Properties: {
	Policy: #Policy
	VectorBucketArn?: #VectorBucketArn
	VectorBucketName?: #VectorBucketName
}

#Policy: {...}

#VectorBucketArn: string

#VectorBucketName: string & strings.MinRunes(3) & strings.MaxRunes(63)
