#
# IdentityNow Beta API
# Use these APIs to interact with the IdentityNow platform to achieve repeatable, automated processes with greater scalability. These APIs are in beta and are subject to change. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.1.0-beta
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

This is the second date to consider (The date that would be on the right hand side of the comparison operation).

.PARAMETER Json

JSON object

.OUTPUTS

DateCompareSecondDate<PSCustomObject>
#>
function ConvertFrom-BetaJsonToDateCompareSecondDate {
    [CmdletBinding()]
    Param (
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        $match = 0
        $matchType = $null
        $matchInstance = $null

        # try to match AccountAttribute defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-BetaJsonToAccountAttribute $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "AccountAttribute"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'AccountAttribute' defined in oneOf (BetaDateCompareSecondDate). Proceeding to the next one if any."
        }

        # try to match DateFormat defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-BetaJsonToDateFormat $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "DateFormat"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'DateFormat' defined in oneOf (BetaDateCompareSecondDate). Proceeding to the next one if any."
        }

        if ($match -gt 1) {
            throw "Error! The JSON payload matches more than one type defined in oneOf schemas ([AccountAttribute, DateFormat]). JSON Payload: $($Json)"
        } elseif ($match -eq 1) {
            return [PSCustomObject]@{
                "ActualType" = ${matchType}
                "ActualInstance" = ${matchInstance}
                "OneOfSchemas" = @("AccountAttribute", "DateFormat")
            }
        } else {
            throw "Error! The JSON payload doesn't matches any type defined in oneOf schemas ([AccountAttribute, DateFormat]). JSON Payload: $($Json)"
        }
    }
}

