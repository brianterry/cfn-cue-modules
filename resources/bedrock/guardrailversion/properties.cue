package guardrailversion

import "strings"

#Properties: {
	// Description of the Guardrail version
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(200)
	// Identifier (GuardrailId or GuardrailArn) for the guardrail
	GuardrailIdentifier: string & =~"^(([a-z0-9]+)|(arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:guardrail/[a-z0-9]+))$" & strings.MaxRunes(2048)
}
