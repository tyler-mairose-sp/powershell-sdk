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

.PARAMETER File
The CSV file containing the source accounts to aggregate.
.PARAMETER DisableOptimization
Use this flag to reprocess every account whether or not the data has changed.
.OUTPUTS

ImportAccountsRequest<PSCustomObject>
#>

function Initialize-V2024ImportAccountsRequest {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.IO.FileInfo]
        ${File},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DisableOptimization}
    )

    Process {
        'Creating PSCustomObject: Tm.V2024 => V2024ImportAccountsRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "file" = ${File}
            "disableOptimization" = ${DisableOptimization}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ImportAccountsRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to ImportAccountsRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ImportAccountsRequest<PSCustomObject>
#>
function ConvertFrom-V2024JsonToImportAccountsRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V2024 => V2024ImportAccountsRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024ImportAccountsRequest
        $AllProperties = ("file", "disableOptimization")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "file"))) { #optional property not found
            $File = $null
        } else {
            $File = $JsonParameters.PSobject.Properties["file"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "disableOptimization"))) { #optional property not found
            $DisableOptimization = $null
        } else {
            $DisableOptimization = $JsonParameters.PSobject.Properties["disableOptimization"].value
        }

        $PSO = [PSCustomObject]@{
            "file" = ${File}
            "disableOptimization" = ${DisableOptimization}
        }

        return $PSO
    }

}

