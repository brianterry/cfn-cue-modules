package datasource

import "github.com/brianterry/cfn-cue-modules/cfn"

// A data source is used to import technical metadata of assets (data) from the source databases or data warehouses into Amazon DataZone. 
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DataZone::DataSource"
	Properties: #Properties
}
