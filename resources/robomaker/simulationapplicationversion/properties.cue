package simulationapplicationversion

import "strings"

#Properties: {
	Application: #Arn
	// The revision ID of robot application.
	CurrentRevisionId?: string & =~"[a-zA-Z0-9_.\\-]*" & strings.MinRunes(1) & strings.MaxRunes(40)
}
