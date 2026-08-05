package simulationapplication

import "strings"

#Properties: {
	// The current revision id.
	CurrentRevisionId?: string
	// The URI of the Docker image for the robot application.
	Environment?: string
	// The name of the simulation application.
	Name?: string & =~"[a-zA-Z0-9_\\-]*" & strings.MinRunes(1) & strings.MaxRunes(255)
	// The rendering engine for the simulation application.
	RenderingEngine?: #RenderingEngine
	// The robot software suite used by the simulation application.
	RobotSoftwareSuite: #RobotSoftwareSuite
	// The simulation software suite used by the simulation application.
	SimulationSoftwareSuite: #SimulationSoftwareSuite
	// The sources of the simulation application.
	Sources?: [...#SourceConfig]
	Tags?: #Tags
}

#RenderingEngine: {
	// The name of the rendering engine.
	Name: "OGRE"
	// The version of the rendering engine.
	Version: string & =~"1.x"
}

#RobotSoftwareSuite: {
	// The name of the robot software suite.
	Name: "ROS" | "ROS2" | "General"
	// The version of the robot software suite.
	Version?: "Kinetic" | "Melodic" | "Dashing" | "Foxy"
}

#SimulationSoftwareSuite: {
	// The name of the simulation software suite.
	Name: "Gazebo" | "RosbagPlay" | "SimulationRuntime"
	// The version of the simulation software suite.
	Version?: "7" | "9" | "11" | "Kinetic" | "Melodic" | "Dashing" | "Foxy"
}

#SourceConfig: {
	// The target processor architecture for the application.
	Architecture: "X86_64" | "ARM64" | "ARMHF"
	// The Amazon S3 bucket name.
	S3Bucket: string & =~"[a-z0-9][a-z0-9.\\-]*[a-z0-9]"
	// The s3 object key.
	S3Key: string & strings.MinRunes(1) & strings.MaxRunes(1024)
}
