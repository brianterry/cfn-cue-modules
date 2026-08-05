package streamingdistribution

#Properties: {
	StreamingDistributionConfig: #StreamingDistributionConfig
	Tags: [...#Tag]
}

#Logging: {
	Bucket: string
	Enabled: bool
	Prefix: string
}

#S3Origin: {
	DomainName: string
	OriginAccessIdentity: string
}

#StreamingDistributionConfig: {
	Aliases?: [...string]
	Comment: string
	Enabled: bool
	Logging?: #Logging
	PriceClass?: string
	S3Origin: #S3Origin
	TrustedSigners: #TrustedSigners
}

#Tag: {
	Key: string
	Value: string
}

#TrustedSigners: {
	AwsAccountNumbers?: [...string]
	Enabled: bool
}
