package customplugin

import "strings"

#Properties: {
	// The type of the plugin file.
	ContentType: "JAR" | "ZIP"
	// A summary description of the custom plugin.
	Description?: string & strings.MaxRunes(1024)
	Location: #CustomPluginLocation
	// The name of the custom plugin.
	Name: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#CustomPluginFileDescription: {
	// The hex-encoded MD5 checksum of the custom plugin file. You can use it to validate the file.
	FileMd5?: string
	// The size in bytes of the custom plugin file. You can use it to validate the file.
	FileSize?: int
}

#CustomPluginLocation: {
	S3Location: #S3Location
}

#S3Location: {
	// The Amazon Resource Name (ARN) of an S3 bucket.
	BucketArn: string
	// The file key for an object in an S3 bucket.
	FileKey: string
	// The version of an object in an S3 bucket.
	ObjectVersion?: string
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
