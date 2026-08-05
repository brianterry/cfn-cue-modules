package invoiceunit

import "strings"

#Properties: {
	Description?: #Description
	InvoiceReceiver: #InvoiceReceiver
	Name: #Name
	ResourceTags?: #ResourceTags
	Rule: #Rule
	TaxInheritanceDisabled?: #TaxInheritanceDisabled
}

#Description: string & =~"^[\\S\\s]*$" & strings.MinRunes(0) & strings.MaxRunes(500)

#InvoiceReceiver: string & =~"^\\d{12}$" & strings.MinRunes(12) & strings.MaxRunes(12)

#InvoiceUnitArn: string & =~"^arn:aws[-a-z0-9]*:[a-z0-9]+:[-a-z0-9]*:[0-9]{12}:[-a-zA-Z0-9/:_]+$" & strings.MinRunes(1) & strings.MaxRunes(256)

#LastModified: number

#Name: string & =~"^(?! )[\\p{L}\\p{N}\\p{Z}-_]*(?<! )$" & strings.MinRunes(1) & strings.MaxRunes(50)

#ResourceTag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(256)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(200)
}

#ResourceTags: [...#ResourceTag]

#Rule: {
	LinkedAccounts: [...string & =~"^\\d{12}$" & strings.MinRunes(12) & strings.MaxRunes(12)]
}

#TaxInheritanceDisabled: bool
