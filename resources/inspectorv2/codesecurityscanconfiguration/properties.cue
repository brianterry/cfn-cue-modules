package codesecurityscanconfiguration

import "strings"

#Properties: {
	// Code Security Scan Configuration
	Configuration?: #CodeSecurityScanConfiguration
	// Configuration Level
	Level?: #ConfigurationLevel
	// Code Security Scan Configuration name
	Name?: string & =~"^[a-zA-Z0-9-_$:.]*$" & strings.MinRunes(1) & strings.MaxRunes(60)
	// Scope Settings
	ScopeSettings?: #ScopeSettings
	Tags?: #TagMap
}

#CodeSecurityScanConfiguration: {
	continuousIntegrationScanConfiguration?: #ContinuousIntegrationScanConfiguration
	periodicScanConfiguration?: #PeriodicScanConfiguration
	ruleSetCategories: [...#RuleSetCategory]
}

#ConfigurationLevel: "ORGANIZATION" | "ACCOUNT"

#ContinuousIntegrationScanConfiguration: {
	supportedEvents: [...#ContinuousIntegrationScanEvent]
}

#ContinuousIntegrationScanEvent: "PULL_REQUEST" | "PUSH"

#PeriodicScanConfiguration: {
	frequency?: #PeriodicScanFrequency
	frequencyExpression?: string & strings.MinRunes(1) & strings.MaxRunes(256)
}

#PeriodicScanFrequency: "WEEKLY" | "MONTHLY" | "NEVER"

#ProjectSelectionScope: "ALL"

#RuleSetCategory: "SAST" | "IAC" | "SCA"

#ScopeSettings: {
	projectSelectionScope?: #ProjectSelectionScope
}

#TagMap: {...}
