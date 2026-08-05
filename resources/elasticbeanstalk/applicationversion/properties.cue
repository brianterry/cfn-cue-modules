package applicationversion

#Properties: {
	// The name of the Elastic Beanstalk application that is associated with this application version. 
	ApplicationName: string
	// A description of this application version.
	Description?: string
	// The Amazon S3 bucket and key that identify the location of the source bundle for this version. 
	SourceBundle: #SourceBundle
}

#SourceBundle: {
	// The Amazon S3 bucket where the data is located.
	S3Bucket: string
	// The Amazon S3 key where the data is located.
	S3Key: string
}
