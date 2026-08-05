package configurationmanager

import "strings"

#Properties: {
	Description?: string & =~"^.{0,512}$"
	Name?: string & =~"^[ A-Za-z0-9_-]{1,50}$"
	Tags?: #TagsMap
}

#ConfigurationDefinition: {
	LocalDeploymentAdministrationRoleArn?: string
	LocalDeploymentExecutionRoleName?: string & strings.MinRunes(1) & strings.MaxRunes(256)
	Parameters: #ConfigurationParametersMap
	Type: string & =~"^[a-zA-Z0-9_\\-.:/]{3,200}$"
	TypeVersion?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	id?: string
}

#ConfigurationParametersMap: {...}

#Status: "INITIALIZING" | "DEPLOYING" | "SUCCEEDED" | "DELETING" | "STOPPING" | "FAILED" | "STOPPED" | "DELETE_FAILED" | "STOP_FAILED" | "NONE"

#StatusDetails: {...}

#StatusSummary: {
	LastUpdatedAt: string
	Status?: #Status
	StatusDetails?: #StatusDetails
	StatusMessage?: string
	StatusType: #StatusType
}

#StatusType: "Deployment" | "AsyncExecutions"

#TagsMap: {...}
