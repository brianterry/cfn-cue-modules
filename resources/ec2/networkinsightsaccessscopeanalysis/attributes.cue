package networkinsightsaccessscopeanalysis

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	NetworkInsightsAccessScopeAnalysisId: string
	NetworkInsightsAccessScopeAnalysisArn: string
	Status: "running" | "failed" | "succeeded"
	StatusMessage: string
	StartDate: string
	EndDate: string
	FindingsFound: "true" | "false" | "unknown"
	AnalyzedEniCount: int
}
