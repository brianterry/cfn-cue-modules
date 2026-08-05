package datatransformationprofile

import "github.com/brianterry/cfn-cue-modules/cfn"

// Creates a Data Transformation Profile in AWS HealthLake that converts healthcare data from a source format (such as C-CDA or CSV) into FHIR R4. A profile is immutable once created; to change its template content, replace the resource. Only its tags can be updated in place.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::HealthLake::DataTransformationProfile"
	Properties: #Properties
}
