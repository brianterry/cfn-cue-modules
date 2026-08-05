package invoiceunit

import "github.com/brianterry/cfn-cue-modules/cfn"

// An invoice unit is a set of mutually exclusive accounts that correspond to your business entity. Invoice units allow you to separate AWS account costs and configures your invoice for each business entity.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Invoicing::InvoiceUnit"
	Properties: #Properties
}
