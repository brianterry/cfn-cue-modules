package robotapplication

import "strings"

#Properties: {
	// The revision ID of robot application.
	CurrentRevisionId?: string & strings.MinRunes(1) & strings.MaxRunes(40)
	// The URI of the Docker image for the robot application.
	Environment?: string
	// The name of the robot application.
	Name?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	RobotSoftwareSuite: #RobotSoftwareSuite
	// The sources of the robot application.
	Sources?: [...#SourceConfig]
	Tags?: #Tags
}

#RobotSoftwareSuite: {
	// The name of robot software suite.
	Name: "ROS" | "ROS2" | "General"
	// The version of robot software suite.
	Version?: "Kinetic" | "Melodic" | "Dashing"
}

#SourceConfig: {
	// The architecture of robot application.
	Architecture: "X86_64" | "ARM64" | "ARMHF"
	// The Arn of the S3Bucket that stores the robot application source.
	S3Bucket: string
	// The s3 key of robot application source.
	S3Key: string
}
