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

The definition of an Identity according to the Reassignment Configuration service

.PARAMETER ReassignedToId
The ID of the Identity who work is reassigned to
.PARAMETER ReassignedFromId
The ID of the Identity who work is reassigned from
.PARAMETER ReassignmentType
No description available.
.OUTPUTS

LookupStep<PSCustomObject>
#>

function Initialize-BetaLookupStep {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ReassignedToId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ReassignedFromId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("MANUAL_REASSIGNMENT,", "AUTOMATIC_REASSIGNMENT,", "AUTO_ESCALATION,", "SELF_REVIEW_DELEGATION")]
        [PSCustomObject]
        ${ReassignmentType}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaLookupStep' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "reassignedToId" = ${ReassignedToId}
            "reassignedFromId" = ${ReassignedFromId}
            "reassignmentType" = ${ReassignmentType}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to LookupStep<PSCustomObject>

.DESCRIPTION

Convert from JSON to LookupStep<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

LookupStep<PSCustomObject>
#>
function ConvertFrom-BetaJsonToLookupStep {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaLookupStep' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaLookupStep
        $AllProperties = ("reassignedToId", "reassignedFromId", "reassignmentType")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "reassignedToId"))) { #optional property not found
            $ReassignedToId = $null
        } else {
            $ReassignedToId = $JsonParameters.PSobject.Properties["reassignedToId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "reassignedFromId"))) { #optional property not found
            $ReassignedFromId = $null
        } else {
            $ReassignedFromId = $JsonParameters.PSobject.Properties["reassignedFromId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "reassignmentType"))) { #optional property not found
            $ReassignmentType = $null
        } else {
            $ReassignmentType = $JsonParameters.PSobject.Properties["reassignmentType"].value
        }

        $PSO = [PSCustomObject]@{
            "reassignedToId" = ${ReassignedToId}
            "reassignedFromId" = ${ReassignedFromId}
            "reassignmentType" = ${ReassignmentType}
        }

        return $PSO
    }

}

