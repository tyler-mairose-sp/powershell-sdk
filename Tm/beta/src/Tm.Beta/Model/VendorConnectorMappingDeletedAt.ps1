#
# Identity Security Cloud Beta API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. These APIs are in beta and are subject to change. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.1.0-beta
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

An object representing the nullable timestamp of when the mapping was deleted.

.PARAMETER Time
The timestamp when the mapping was deleted, represented in ISO 8601 format, if applicable.
.PARAMETER Valid
A flag indicating if the 'Time' field is set and valid, i.e., if the mapping has been deleted.
.OUTPUTS

VendorConnectorMappingDeletedAt<PSCustomObject>
#>

function Initialize-BetaVendorConnectorMappingDeletedAt {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Time},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Valid} = $false
    )

    Process {
        'Creating PSCustomObject: Tm.Beta => BetaVendorConnectorMappingDeletedAt' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "Time" = ${Time}
            "Valid" = ${Valid}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to VendorConnectorMappingDeletedAt<PSCustomObject>

.DESCRIPTION

Convert from JSON to VendorConnectorMappingDeletedAt<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

VendorConnectorMappingDeletedAt<PSCustomObject>
#>
function ConvertFrom-BetaJsonToVendorConnectorMappingDeletedAt {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.Beta => BetaVendorConnectorMappingDeletedAt' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaVendorConnectorMappingDeletedAt
        $AllProperties = ("Time", "Valid")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Time"))) { #optional property not found
            $Time = $null
        } else {
            $Time = $JsonParameters.PSobject.Properties["Time"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "Valid"))) { #optional property not found
            $Valid = $null
        } else {
            $Valid = $JsonParameters.PSobject.Properties["Valid"].value
        }

        $PSO = [PSCustomObject]@{
            "Time" = ${Time}
            "Valid" = ${Valid}
        }

        return $PSO
    }

}

