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

.PARAMETER AssignmentRule
Details about the violations owner. MANAGER - identity's manager STATIC - Governance Group or Identity
.PARAMETER OwnerRef
No description available.
.OUTPUTS

ViolationOwnerAssignmentConfig<PSCustomObject>
#>

function Initialize-V2024ViolationOwnerAssignmentConfig {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("MANAGER", "STATIC", "")]
        [String]
        ${AssignmentRule},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${OwnerRef}
    )

    Process {
        'Creating PSCustomObject: Tm.V2024 => V2024ViolationOwnerAssignmentConfig' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "assignmentRule" = ${AssignmentRule}
            "ownerRef" = ${OwnerRef}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ViolationOwnerAssignmentConfig<PSCustomObject>

.DESCRIPTION

Convert from JSON to ViolationOwnerAssignmentConfig<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ViolationOwnerAssignmentConfig<PSCustomObject>
#>
function ConvertFrom-V2024JsonToViolationOwnerAssignmentConfig {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V2024 => V2024ViolationOwnerAssignmentConfig' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024ViolationOwnerAssignmentConfig
        $AllProperties = ("assignmentRule", "ownerRef")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "assignmentRule"))) { #optional property not found
            $AssignmentRule = $null
        } else {
            $AssignmentRule = $JsonParameters.PSobject.Properties["assignmentRule"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ownerRef"))) { #optional property not found
            $OwnerRef = $null
        } else {
            $OwnerRef = $JsonParameters.PSobject.Properties["ownerRef"].value
        }

        $PSO = [PSCustomObject]@{
            "assignmentRule" = ${AssignmentRule}
            "ownerRef" = ${OwnerRef}
        }

        return $PSO
    }

}

