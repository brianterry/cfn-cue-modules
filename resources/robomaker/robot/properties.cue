package robot

import "strings"

#Properties: {
	// The target architecture of the robot.
	Architecture: "X86_64" | "ARM64" | "ARMHF"
	// The Amazon Resource Name (ARN) of the fleet.
	Fleet?: string & strings.MinRunes(1) & strings.MaxRunes(1224)
	// The Greengrass group id.
	GreengrassGroupId: string & strings.MinRunes(1) & strings.MaxRunes(1224)
	// The name for the robot.
	Name?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	Tags?: #Tags
}

#Arn: string & =~"arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]*:[\\w+=,.@-]+(/[\\w+=,.@-]+)*"

#Tags: {...}
