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

.PARAMETER State
The status of SOD violation check
.PARAMETER Uuid
The id of the Violation check event
.PARAMETER ViolationCheckResult
No description available.
.OUTPUTS

RequestedItemStatusSodViolationContext<PSCustomObject>
#>

function Initialize-V2024RequestedItemStatusSodViolationContext {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("SUCCESS", "ERROR", "")]
        [String]
        ${State},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Uuid},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ViolationCheckResult}
    )

    Process {
        'Creating PSCustomObject: PSSailpointV2024 => V2024RequestedItemStatusSodViolationContext' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "state" = ${State}
            "uuid" = ${Uuid}
            "violationCheckResult" = ${ViolationCheckResult}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to RequestedItemStatusSodViolationContext<PSCustomObject>

.DESCRIPTION

Convert from JSON to RequestedItemStatusSodViolationContext<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

RequestedItemStatusSodViolationContext<PSCustomObject>
#>
function ConvertFrom-V2024JsonToRequestedItemStatusSodViolationContext {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointV2024 => V2024RequestedItemStatusSodViolationContext' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024RequestedItemStatusSodViolationContext
        $AllProperties = ("state", "uuid", "violationCheckResult")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "state"))) { #optional property not found
            $State = $null
        } else {
            $State = $JsonParameters.PSobject.Properties["state"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "uuid"))) { #optional property not found
            $Uuid = $null
        } else {
            $Uuid = $JsonParameters.PSobject.Properties["uuid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "violationCheckResult"))) { #optional property not found
            $ViolationCheckResult = $null
        } else {
            $ViolationCheckResult = $JsonParameters.PSobject.Properties["violationCheckResult"].value
        }

        $PSO = [PSCustomObject]@{
            "state" = ${State}
            "uuid" = ${Uuid}
            "violationCheckResult" = ${ViolationCheckResult}
        }

        return $PSO
    }

}

