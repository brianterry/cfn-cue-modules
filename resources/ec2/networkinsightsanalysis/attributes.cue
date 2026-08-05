package networkinsightsanalysis

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	NetworkInsightsAnalysisId: string
	NetworkInsightsAnalysisArn: string
	StartDate: string
	Status: "running" | "failed" | "succeeded"
	StatusMessage: string
	NetworkPathFound: bool
	ForwardPathComponents: [...#PathComponent]
	ReturnPathComponents: [...#PathComponent]
	Explanations: [...#Explanation]
	AlternatePathHints: [...#AlternatePathHint]
	SuggestedAccounts: [...string]
}
