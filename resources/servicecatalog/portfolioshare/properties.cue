package portfolioshare

#Properties: {
	// The language code.
	AcceptLanguage?: string
	// The AWS account ID.
	AccountId: string & =~"^[0-9]{12}$"
	// The portfolio identifier.
	PortfolioId: string
	// Enables or disables TagOptions sharing when creating the portfolio share.
	ShareTagOptions?: bool
}
