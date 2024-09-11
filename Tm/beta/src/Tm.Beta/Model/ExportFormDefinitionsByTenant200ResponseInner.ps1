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

No description available.

.PARAMETER Object
No description available.
.PARAMETER Self
No description available.
.PARAMETER Version
No description available.
.OUTPUTS

ExportFormDefinitionsByTenant200ResponseInner<PSCustomObject>
#>

function Initialize-BetaExportFormDefinitionsByTenant200ResponseInner {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Object},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Self},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Version}
    )

    Process {
        'Creating PSCustomObject: Tm.Beta => BetaExportFormDefinitionsByTenant200ResponseInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "object" = ${Object}
            "self" = ${Self}
            "version" = ${Version}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ExportFormDefinitionsByTenant200ResponseInner<PSCustomObject>

.DESCRIPTION

Convert from JSON to ExportFormDefinitionsByTenant200ResponseInner<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ExportFormDefinitionsByTenant200ResponseInner<PSCustomObject>
#>
function ConvertFrom-BetaJsonToExportFormDefinitionsByTenant200ResponseInner {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.Beta => BetaExportFormDefinitionsByTenant200ResponseInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaExportFormDefinitionsByTenant200ResponseInner
        $AllProperties = ("object", "self", "version")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "object"))) { #optional property not found
            $Object = $null
        } else {
            $Object = $JsonParameters.PSobject.Properties["object"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "self"))) { #optional property not found
            $Self = $null
        } else {
            $Self = $JsonParameters.PSobject.Properties["self"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "version"))) { #optional property not found
            $Version = $null
        } else {
            $Version = $JsonParameters.PSobject.Properties["version"].value
        }

        $PSO = [PSCustomObject]@{
            "object" = ${Object}
            "self" = ${Self}
            "version" = ${Version}
        }

        return $PSO
    }

}

