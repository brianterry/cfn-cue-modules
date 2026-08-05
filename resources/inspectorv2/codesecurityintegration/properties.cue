package codesecurityintegration

import "strings"

#Properties: {
	// Create Integration Details
	CreateIntegrationDetails?: #CreateDetails
	// Code Security Integration name
	Name?: string & =~"^[a-zA-Z0-9-_$:.]*$" & strings.MinRunes(1) & strings.MaxRunes(60)
	Tags?: #TagMap
	// Integration Type
	Type?: #IntegrationType
	// Update Integration Details
	UpdateIntegrationDetails?: #UpdateDetails
}

#CreateDetails: {
	gitlabSelfManaged: #CreateGitLabSelfManagedIntegrationDetail
}

#CreateGitLabSelfManagedIntegrationDetail: {
	accessToken: string
	instanceUrl: string & =~"^https://[-a-zA-Z0-9()@:%_+.~#?&//=]{1,1024}$"
}

#IntegrationStatus: "PENDING" | "IN_PROGRESS" | "ACTIVE" | "INACTIVE" | "DISABLING"

#IntegrationType: "GITLAB_SELF_MANAGED" | "GITHUB"

#TagMap: {...}

#UpdateDetails: {
	github?: #UpdateGitHubIntegrationDetail
	gitlabSelfManaged?: #UpdateGitLabSelfManagedIntegrationDetail
}

#UpdateGitHubIntegrationDetail: {
	code: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	installationId: string & strings.MinRunes(1) & strings.MaxRunes(1024)
}

#UpdateGitLabSelfManagedIntegrationDetail: {
	authCode: string & strings.MinRunes(1) & strings.MaxRunes(1024)
}
