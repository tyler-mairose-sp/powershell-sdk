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

No description available.

.PARAMETER Json

JSON object

.OUTPUTS

ArrayInner<PSCustomObject>
#>
function ConvertFrom-V2024JsonToArrayInner {
    [CmdletBinding()]
    Param (
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        $match = 0
        $matchType = $null
        $matchInstance = $null

        if ($match -ne 0) { # no match yet
            # try to match Int32 defined in the anyOf schemas
            try {
                $matchInstance = ConvertFrom-V2024JsonToInt32 $Json

                foreach($property in $matchInstance.PsObject.Properties) {
                    if ($null -ne $property.Value) {
                        $matchType = "Int32"
                        $match++
                        break
                    }
                }
            } catch {
                # fail to match the schema defined in anyOf, proceed to the next one
                Write-Debug "Failed to match 'Int32' defined in anyOf (V2024ArrayInner). Proceeding to the next one if any."
            }
        }

        if ($match -ne 0) { # no match yet
            # try to match String defined in the anyOf schemas
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
                # fail to match the schema defined in anyOf, proceed to the next one
                Write-Debug "Failed to match 'String' defined in anyOf (V2024ArrayInner). Proceeding to the next one if any."
            }
        }

        if ($match -ne 0) { # no match yet
            # try to match SystemCollectionsHashtable defined in the anyOf schemas
            try {
                $matchInstance = ConvertFrom-V2024JsonToSystemCollectionsHashtable $Json

                foreach($property in $matchInstance.PsObject.Properties) {
                    if ($null -ne $property.Value) {
                        $matchType = "SystemCollectionsHashtable"
                        $match++
                        break
                    }
                }
            } catch {
                # fail to match the schema defined in anyOf, proceed to the next one
                Write-Debug "Failed to match 'SystemCollectionsHashtable' defined in anyOf (V2024ArrayInner). Proceeding to the next one if any."
            }
        }

        if ($match -eq 1) {
            return [PSCustomObject]@{
                "ActualType" = ${matchType}
                "ActualInstance" = ${matchInstance}
                "anyOfSchemas" = @("Int32", "String", "SystemCollectionsHashtable")
            }
        } else {
            throw "Error! The JSON payload doesn't matches any type defined in anyOf schemas ([Int32, String, SystemCollectionsHashtable]). JSON Payload: $($Json)"
        }
    }
}

