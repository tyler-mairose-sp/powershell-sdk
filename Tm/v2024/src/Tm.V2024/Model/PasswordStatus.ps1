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

.PARAMETER RequestId
The password change request ID
.PARAMETER State
Password change state
.PARAMETER Errors
The errors during the password change request
.PARAMETER SourceIds
List of source IDs in the password change request
.OUTPUTS

PasswordStatus<PSCustomObject>
#>

function Initialize-V2024PasswordStatus {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RequestId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("IN_PROGRESS", "FINISHED", "FAILED")]
        [String]
        ${State},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Errors},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${SourceIds}
    )

    Process {
        'Creating PSCustomObject: Tm.V2024 => V2024PasswordStatus' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "requestId" = ${RequestId}
            "state" = ${State}
            "errors" = ${Errors}
            "sourceIds" = ${SourceIds}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PasswordStatus<PSCustomObject>

.DESCRIPTION

Convert from JSON to PasswordStatus<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PasswordStatus<PSCustomObject>
#>
function ConvertFrom-V2024JsonToPasswordStatus {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V2024 => V2024PasswordStatus' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024PasswordStatus
        $AllProperties = ("requestId", "state", "errors", "sourceIds")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requestId"))) { #optional property not found
            $RequestId = $null
        } else {
            $RequestId = $JsonParameters.PSobject.Properties["requestId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "state"))) { #optional property not found
            $State = $null
        } else {
            $State = $JsonParameters.PSobject.Properties["state"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "errors"))) { #optional property not found
            $Errors = $null
        } else {
            $Errors = $JsonParameters.PSobject.Properties["errors"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sourceIds"))) { #optional property not found
            $SourceIds = $null
        } else {
            $SourceIds = $JsonParameters.PSobject.Properties["sourceIds"].value
        }

        $PSO = [PSCustomObject]@{
            "requestId" = ${RequestId}
            "state" = ${State}
            "errors" = ${Errors}
            "sourceIds" = ${SourceIds}
        }

        return $PSO
    }

}

