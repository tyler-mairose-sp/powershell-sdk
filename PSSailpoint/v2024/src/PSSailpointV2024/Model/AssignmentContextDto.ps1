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

.PARAMETER Requested
No description available.
.PARAMETER Matched
No description available.
.PARAMETER ComputedDate
Date that the assignment will was evaluated
.OUTPUTS

AssignmentContextDto<PSCustomObject>
#>

function Initialize-V2024AssignmentContextDto {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Requested},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Matched},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ComputedDate}
    )

    Process {
        'Creating PSCustomObject: PSSailpointV2024 => V2024AssignmentContextDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "requested" = ${Requested}
            "matched" = ${Matched}
            "computedDate" = ${ComputedDate}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AssignmentContextDto<PSCustomObject>

.DESCRIPTION

Convert from JSON to AssignmentContextDto<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AssignmentContextDto<PSCustomObject>
#>
function ConvertFrom-V2024JsonToAssignmentContextDto {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointV2024 => V2024AssignmentContextDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024AssignmentContextDto
        $AllProperties = ("requested", "matched", "computedDate")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requested"))) { #optional property not found
            $Requested = $null
        } else {
            $Requested = $JsonParameters.PSobject.Properties["requested"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "matched"))) { #optional property not found
            $Matched = $null
        } else {
            $Matched = $JsonParameters.PSobject.Properties["matched"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "computedDate"))) { #optional property not found
            $ComputedDate = $null
        } else {
            $ComputedDate = $JsonParameters.PSobject.Properties["computedDate"].value
        }

        $PSO = [PSCustomObject]@{
            "requested" = ${Requested}
            "matched" = ${Matched}
            "computedDate" = ${ComputedDate}
        }

        return $PSO
    }

}

