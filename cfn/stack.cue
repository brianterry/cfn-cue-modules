// Package cfn provides the base CloudFormation template envelope definitions.
// This is the foundational module that all resource modules import.
package cfn

// #Stack defines a complete CloudFormation template.
#Stack: {
	AWSTemplateFormatVersion?: "2010-09-09"
	Description?:              string
	Metadata?:                 {[string]: _}
	Parameters?:               {[string]: #Parameter}
	Mappings?:                 {[string]: {[string]: {[string]: _}}}
	Conditions?:               {[string]: _}
	Transform?:                string | [...string]
	Resources:                 {[string]: _}
	Outputs?:                  {[string]: #Output}
}

// #Parameter defines a CloudFormation template parameter.
#Parameter: {
	Type:                   string
	Default?:               _
	AllowedValues?:         [...]
	AllowedPattern?:        string
	ConstraintDescription?: string
	Description?:           string
	MaxLength?:             int
	MinLength?:             int
	MaxValue?:              number
	MinValue?:              number
	NoEcho?:                bool
}

// #Output defines a CloudFormation stack output.
#Output: {
	Description?: string
	Value:        _
	Export?: Name: _
	Condition?: string
	...
}

// #ResourceBase is the base structure all resource definitions extend.
// All generated resource modules unify with this.
#ResourceBase: {
	Type:                 string
	Properties:           {...}
	DependsOn?:           string | [...string]
	Condition?:           string
	DeletionPolicy?:      "Delete" | "Retain" | "Snapshot" | "RetainExceptOnCreate"
	UpdatePolicy?:        {[string]: _}
	UpdateReplacePolicy?: "Delete" | "Retain" | "Snapshot" | "RetainExceptOnCreate"
	CreationPolicy?:      {[string]: _}
	Metadata?:            {[string]: _}
	...
}

// #Tag is the standard AWS resource tag structure.
#Tag: {
	Key:   string
	Value: _
}
