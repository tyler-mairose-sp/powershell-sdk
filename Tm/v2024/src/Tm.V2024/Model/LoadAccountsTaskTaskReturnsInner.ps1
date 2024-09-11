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

.PARAMETER DisplayLabel
The display label of the return value
.PARAMETER AttributeName
The attribute name of the return value
.OUTPUTS

LoadAccountsTaskTaskReturnsInner<PSCustomObject>
#>

function Initialize-V2024LoadAccountsTaskTaskReturnsInner {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DisplayLabel},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AttributeName}
    )

    Process {
        'Creating PSCustomObject: Tm.V2024 => V2024LoadAccountsTaskTaskReturnsInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "displayLabel" = ${DisplayLabel}
            "attributeName" = ${AttributeName}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to LoadAccountsTaskTaskReturnsInner<PSCustomObject>

.DESCRIPTION

Convert from JSON to LoadAccountsTaskTaskReturnsInner<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

LoadAccountsTaskTaskReturnsInner<PSCustomObject>
#>
function ConvertFrom-V2024JsonToLoadAccountsTaskTaskReturnsInner {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V2024 => V2024LoadAccountsTaskTaskReturnsInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024LoadAccountsTaskTaskReturnsInner
        $AllProperties = ("displayLabel", "attributeName")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "displayLabel"))) { #optional property not found
            $DisplayLabel = $null
        } else {
            $DisplayLabel = $JsonParameters.PSobject.Properties["displayLabel"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attributeName"))) { #optional property not found
            $AttributeName = $null
        } else {
            $AttributeName = $JsonParameters.PSobject.Properties["attributeName"].value
        }

        $PSO = [PSCustomObject]@{
            "displayLabel" = ${DisplayLabel}
            "attributeName" = ${AttributeName}
        }

        return $PSO
    }

}

