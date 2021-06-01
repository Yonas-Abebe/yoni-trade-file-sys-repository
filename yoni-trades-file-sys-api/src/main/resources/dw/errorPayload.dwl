%dw 2.0
output application/json
---
{
	message: "error occured",
	error: {description: error.description,
			errorType: error.errorType.asString}
}