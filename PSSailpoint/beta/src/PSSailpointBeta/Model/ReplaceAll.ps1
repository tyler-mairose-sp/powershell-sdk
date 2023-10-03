#
# IdentityNow Beta API
# Use these APIs to interact with the IdentityNow platform to achieve repeatable, automated processes with greater scalability. These APIs are in beta and are subject to change. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.1.0-beta
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Table
An attribute of key-value pairs. Each pair identifies the pattern to search for as its key, and the replacement string as its value.
.PARAMETER RequiresPeriodicRefresh
A value that indicates whether the transform logic should be re-evaluated every evening as part of the identity refresh process
.PARAMETER VarInput
This is an optional attribute that can explicitly define the input data which will be fed into the transform logic. If input is not provided, the transform will take its input from the source and attribute combination configured via the UI.
.OUTPUTS

ReplaceAll<PSCustomObject>
#>

function Initialize-BetaReplaceAll {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Table},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${RequiresPeriodicRefresh} = $false,
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${VarInput}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaReplaceAll' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Table) {
            throw "invalid value for 'Table', 'Table' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "table" = ${Table}
            "requiresPeriodicRefresh" = ${RequiresPeriodicRefresh}
            "input" = ${VarInput}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ReplaceAll<PSCustomObject>

.DESCRIPTION

Convert from JSON to ReplaceAll<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ReplaceAll<PSCustomObject>
#>
function ConvertFrom-BetaJsonToReplaceAll {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaReplaceAll' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaReplaceAll
        $AllProperties = ("table", "requiresPeriodicRefresh", "input")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'table' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "table"))) {
            throw "Error! JSON cannot be serialized due to the required property 'table' missing."
        } else {
            $Table = $JsonParameters.PSobject.Properties["table"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requiresPeriodicRefresh"))) { #optional property not found
            $RequiresPeriodicRefresh = $null
        } else {
            $RequiresPeriodicRefresh = $JsonParameters.PSobject.Properties["requiresPeriodicRefresh"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "input"))) { #optional property not found
            $VarInput = $null
        } else {
            $VarInput = $JsonParameters.PSobject.Properties["input"].value
        }

        $PSO = [PSCustomObject]@{
            "table" = ${Table}
            "requiresPeriodicRefresh" = ${RequiresPeriodicRefresh}
            "input" = ${VarInput}
        }

        return $PSO
    }

}

