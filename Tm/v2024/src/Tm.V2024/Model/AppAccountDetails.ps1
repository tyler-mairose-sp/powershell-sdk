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

.PARAMETER AppId
The source app ID
.PARAMETER AppDisplayName
The source app display name
.PARAMETER SourceAccount
No description available.
.OUTPUTS

AppAccountDetails<PSCustomObject>
#>

function Initialize-V2024AppAccountDetails {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AppId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AppDisplayName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${SourceAccount}
    )

    Process {
        'Creating PSCustomObject: Tm.V2024 => V2024AppAccountDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "appId" = ${AppId}
            "appDisplayName" = ${AppDisplayName}
            "sourceAccount" = ${SourceAccount}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AppAccountDetails<PSCustomObject>

.DESCRIPTION

Convert from JSON to AppAccountDetails<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AppAccountDetails<PSCustomObject>
#>
function ConvertFrom-V2024JsonToAppAccountDetails {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V2024 => V2024AppAccountDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024AppAccountDetails
        $AllProperties = ("appId", "appDisplayName", "sourceAccount")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "appId"))) { #optional property not found
            $AppId = $null
        } else {
            $AppId = $JsonParameters.PSobject.Properties["appId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "appDisplayName"))) { #optional property not found
            $AppDisplayName = $null
        } else {
            $AppDisplayName = $JsonParameters.PSobject.Properties["appDisplayName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sourceAccount"))) { #optional property not found
            $SourceAccount = $null
        } else {
            $SourceAccount = $JsonParameters.PSobject.Properties["sourceAccount"].value
        }

        $PSO = [PSCustomObject]@{
            "appId" = ${AppId}
            "appDisplayName" = ${AppDisplayName}
            "sourceAccount" = ${SourceAccount}
        }

        return $PSO
    }

}

