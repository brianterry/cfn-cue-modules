package streamprocessor

import "strings"

#Properties: {
	// The BoundingBoxRegionsOfInterest specifies an array of bounding boxes of interest in the video frames to analyze, as part of connected home feature. If an object is partially in a region of interest, Rekognition will tag it as detected if the overlap of the object with the region-of-interest is greater than 20%.
	BoundingBoxRegionsOfInterest?: [...#BoundingBox]
	ConnectedHomeSettings?: #ConnectedHomeSettings
	DataSharingPreference?: #DataSharingPreference
	FaceSearchSettings?: #FaceSearchSettings
	KinesisDataStream?: #KinesisDataStream
	KinesisVideoStream: #KinesisVideoStream
	// The KMS key that is used by Rekognition to encrypt any intermediate customer metadata and store in the customer's S3 bucket.
	KmsKeyId?: string
	// Name of the stream processor. It's an identifier you assign to the stream processor. You can use it to manage the stream processor.
	Name?: string & =~"[a-zA-Z0-9_.\\-]+" & strings.MinRunes(1) & strings.MaxRunes(128)
	NotificationChannel?: #NotificationChannel
	// The PolygonRegionsOfInterest specifies a set of polygon areas of interest in the video frames to analyze, as part of connected home feature. Each polygon is in turn, an ordered list of Point
	PolygonRegionsOfInterest?: [...#Polygon]
	// ARN of the IAM role that allows access to the stream processor, and provides Rekognition read permissions for KVS stream and write permissions to S3 bucket and SNS topic.
	RoleArn: string & =~"arn:aws(-[\\w]+)*:iam::[0-9]{12}:role/.*" & strings.MaxRunes(2048)
	S3Destination?: #S3Destination
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#Arn: string & strings.MaxRunes(2048)

#BoundingBox: {
	Height: number & >=0 & <=100
	Left: number & >=0 & <=100
	Top: number & >=0 & <=100
	Width: number & >=0 & <=100
}

#ConnectedHomeSettings: {
	Labels: #Labels
	// Minimum object class match confidence score that must be met to return a result for a recognized object.
	MinConfidence?: number & >=0 & <=100
}

#DataSharingPreference: {
	// Flag to enable data-sharing
	OptIn: bool
}

#FaceSearchSettings: {
	// The ID of a collection that contains faces that you want to search for.
	CollectionId: string & =~"\\A[a-zA-Z0-9_\\.\\-]+$" & strings.MaxRunes(255)
	// Minimum face match confidence score percentage that must be met to return a result for a recognized face. The default is 80. 0 is the lowest confidence. 100 is the highest confidence. Values between 0 and 100 are accepted.
	FaceMatchThreshold?: number & >=0 & <=100
}

#KinesisDataStream: {
	// ARN of the Kinesis Data Stream stream.
	Arn: string & =~"(^arn:([a-z\\d-]+):kinesis:([a-z\\d-]+):\\d{12}:.+$)" & strings.MaxRunes(2048)
}

#KinesisVideoStream: {
	// ARN of the Kinesis Video Stream that streams the source video.
	Arn: string & =~"(^arn:([a-z\\d-]+):kinesisvideo:([a-z\\d-]+):\\d{12}:.+$)" & strings.MaxRunes(2048)
}

#Labels: [...string & strings.MinRunes(1) & strings.MaxRunes(128)]

#NotificationChannel: {
	// ARN of the SNS topic.
	Arn: string & strings.MaxRunes(2048)
}

#Point: {
	// The X coordinate of the point.
	X: number
	// The Y coordinate of the point.
	Y: number
}

#Polygon: [...#Point]

#S3Destination: {
	// Name of the S3 bucket.
	BucketName: string & strings.MaxRunes(63)
	// The object key prefix path where the results will be stored. Default is no prefix path
	ObjectKeyPrefix?: string & strings.MaxRunes(256)
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & =~"\\A(?!aws:)[a-zA-Z0-9+\\-=\\._\\:\\/@]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & =~"\\A[a-zA-Z0-9+\\-=\\._\\:\\/@]+$" & strings.MinRunes(0) & strings.MaxRunes(256)
}
