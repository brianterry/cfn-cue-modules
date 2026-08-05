package script

import "strings"

#Properties: {
	// A descriptive label that is associated with a script. Script names do not need to be unique.
	Name?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	// The Node.js version used for execution of the Realtime script.
	NodeJsVersion?: string & =~"^\\d+\\.[x0-9]+$"
	// The location of the Amazon S3 bucket where a zipped file containing your Realtime scripts is stored. The storage location must specify the Amazon S3 bucket name, the zip file name (the "key"), and a role ARN that allows Amazon GameLift to access the Amazon S3 storage location. The S3 bucket must be in the same Region where you want to create a new script. By default, Amazon GameLift uploads the latest version of the zip file; if you have S3 object versioning turned on, you can use the ObjectVersion parameter to specify an earlier version.
	StorageLocation: #S3Location
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
	// The version that is associated with a script. Version strings do not need to be unique.
	Version?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
}

#S3Location: {
	// An Amazon S3 bucket identifier. This is the name of the S3 bucket.
	Bucket: string & strings.MinRunes(1)
	// The name of the zip file that contains the script files.
	Key: string & strings.MinRunes(1)
	// The version of the file, if object versioning is turned on for the bucket. Amazon GameLift uses this information when retrieving files from your S3 bucket. To retrieve a specific version of the file, provide an object version. To retrieve the latest version of the file, do not set this parameter.
	ObjectVersion?: string & strings.MinRunes(1)
	// The Amazon Resource Name (ARN) for an IAM role that allows Amazon GameLift to access the S3 bucket.
	RoleArn: string & strings.MinRunes(1)
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
