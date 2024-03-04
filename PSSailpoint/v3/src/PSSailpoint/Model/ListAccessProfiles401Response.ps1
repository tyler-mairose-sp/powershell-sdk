#
# IdentityNow V3 API
# Use these APIs to interact with the IdentityNow platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER VarError
A message describing the error
.OUTPUTS

ListAccessProfiles401Response<PSCustomObject>
#>

function Initialize-ListAccessProfiles401Response {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${VarError}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => ListAccessProfiles401Response' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "error" = ${VarError}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ListAccessProfiles401Response<PSCustomObject>

.DESCRIPTION

Convert from JSON to ListAccessProfiles401Response<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ListAccessProfiles401Response<PSCustomObject>
#>
function ConvertFrom-JsonToListAccessProfiles401Response {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => ListAccessProfiles401Response' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ListAccessProfiles401Response
        $AllProperties = ("error")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "error"))) { #optional property not found
            $VarError = $null
        } else {
            $VarError = $JsonParameters.PSobject.Properties["error"].value
        }

        $PSO = [PSCustomObject]@{
            "error" = ${VarError}
        }

        return $PSO
    }

}

