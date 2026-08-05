package reportdefinition

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::CUR::ReportDefinition resource creates a Cost & Usage Report with user-defined settings. You can use this resource to define settings like time granularity (hourly, daily, monthly), file format (Parquet, CSV), and S3 bucket for delivery of these reports.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CUR::ReportDefinition"
	Properties: #Properties
}
