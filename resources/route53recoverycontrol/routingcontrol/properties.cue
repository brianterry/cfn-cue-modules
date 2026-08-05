package routingcontrol

import "strings"

#Properties: {
	// Arn associated with Control Panel
	ClusterArn?: string & =~"^[A-Za-z0-9:\\/_-]*$"
	// The Amazon Resource Name (ARN) of the control panel.
	ControlPanelArn?: string & =~"^[A-Za-z0-9:\\/_-]*$"
	// The name of the routing control. You can use any non-white space character in the name.
	Name: string & strings.MinRunes(1) & strings.MaxRunes(64)
}
