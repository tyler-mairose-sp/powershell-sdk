#
# Identity Security Cloud V2024 API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: v2024
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

The value of the identity attribute before it changed.

.PARAMETER Json

JSON object

.OUTPUTS

IdentityAttributesChangedChangesInnerOldValue<PSCustomObject>
#>
function ConvertFrom-V2024JsonToIdentityAttributesChangedChangesInnerOldValue {
    [CmdletBinding()]
    Param (
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        $match = 0
        $matchType = $null
        $matchInstance = $null

        # nullable check
        if ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") {
            return [PSCustomObject]@{
                "ActualType" = $null
                "ActualInstance" = $null
                "OneOfSchemas" = @("Boolean", "String", "String[]", "System.Collections.Hashtable")
            }
        }

        # try to match Boolean defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-V2024JsonToBoolean $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "Boolean"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'Boolean' defined in oneOf (V2024IdentityAttributesChangedChangesInnerOldValue). Proceeding to the next one if any."
        }

        # try to match String defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-V2024JsonToString $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "String"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'String' defined in oneOf (V2024IdentityAttributesChangedChangesInnerOldValue). Proceeding to the next one if any."
        }

        # try to match String[] defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-V2024JsonToString[] $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "String[]"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'String[]' defined in oneOf (V2024IdentityAttributesChangedChangesInnerOldValue). Proceeding to the next one if any."
        }

        # try to match System.Collections.Hashtable defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-V2024JsonToSystem.Collections.Hashtable $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "System.Collections.Hashtable"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'System.Collections.Hashtable' defined in oneOf (V2024IdentityAttributesChangedChangesInnerOldValue). Proceeding to the next one if any."
        }

        if ($match -gt 1) {
            throw "Error! The JSON payload matches more than one type defined in oneOf schemas ([Boolean, String, String[], System.Collections.Hashtable]). JSON Payload: $($Json)"
        } elseif ($match -eq 1) {
            return [PSCustomObject]@{
                "ActualType" = ${matchType}
                "ActualInstance" = ${matchInstance}
                "OneOfSchemas" = @("Boolean", "String", "String[]", "System.Collections.Hashtable")
            }
        } else {
            throw "Error! The JSON payload doesn't matches any type defined in oneOf schemas ([Boolean, String, String[], System.Collections.Hashtable]). JSON Payload: $($Json)"
        }
    }
}

