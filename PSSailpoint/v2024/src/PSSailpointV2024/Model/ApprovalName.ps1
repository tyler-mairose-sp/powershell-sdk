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

Approval Name Object

.PARAMETER Value
Name of the approval
.PARAMETER Locale
What locale the name of the approval is using
.OUTPUTS

ApprovalName<PSCustomObject>
#>

function Initialize-V2024ApprovalName {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Value},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Locale}
    )

    Process {
        'Creating PSCustomObject: PSSailpointV2024 => V2024ApprovalName' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "value" = ${Value}
            "locale" = ${Locale}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ApprovalName<PSCustomObject>

.DESCRIPTION

Convert from JSON to ApprovalName<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ApprovalName<PSCustomObject>
#>
function ConvertFrom-V2024JsonToApprovalName {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointV2024 => V2024ApprovalName' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024ApprovalName
        $AllProperties = ("value", "locale")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "value"))) { #optional property not found
            $Value = $null
        } else {
            $Value = $JsonParameters.PSobject.Properties["value"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "locale"))) { #optional property not found
            $Locale = $null
        } else {
            $Locale = $JsonParameters.PSobject.Properties["locale"].value
        }

        $PSO = [PSCustomObject]@{
            "value" = ${Value}
            "locale" = ${Locale}
        }

        return $PSO
    }

}

