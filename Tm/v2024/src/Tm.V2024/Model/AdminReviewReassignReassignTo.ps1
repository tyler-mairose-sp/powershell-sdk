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

.PARAMETER Id
The identity ID to which the review is being assigned.
.PARAMETER Type
The type of the ID provided.
.OUTPUTS

AdminReviewReassignReassignTo<PSCustomObject>
#>

function Initialize-V2024AdminReviewReassignReassignTo {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("IDENTITY")]
        [String]
        ${Type}
    )

    Process {
        'Creating PSCustomObject: Tm.V2024 => V2024AdminReviewReassignReassignTo' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "type" = ${Type}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AdminReviewReassignReassignTo<PSCustomObject>

.DESCRIPTION

Convert from JSON to AdminReviewReassignReassignTo<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AdminReviewReassignReassignTo<PSCustomObject>
#>
function ConvertFrom-V2024JsonToAdminReviewReassignReassignTo {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V2024 => V2024AdminReviewReassignReassignTo' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024AdminReviewReassignReassignTo
        $AllProperties = ("id", "type")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "type" = ${Type}
        }

        return $PSO
    }

}

