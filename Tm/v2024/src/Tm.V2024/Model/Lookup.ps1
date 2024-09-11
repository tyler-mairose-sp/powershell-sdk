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

.PARAMETER Table
This is a JSON object of key-value pairs. The key is the string that will attempt to be matched to the input, and the value is the output string that should be returned if the key is matched   >**Note** the use of the optional default key value here; if none of the three countries in the above example match the input string, the transform will return ""Unknown Region"" for the attribute that is mapped to this transform. 
.PARAMETER RequiresPeriodicRefresh
A value that indicates whether the transform logic should be re-evaluated every evening as part of the identity refresh process
.PARAMETER VarInput
This is an optional attribute that can explicitly define the input data which will be fed into the transform logic. If input is not provided, the transform will take its input from the source and attribute combination configured via the UI.
.OUTPUTS

Lookup<PSCustomObject>
#>

function Initialize-V2024Lookup {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Table},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${RequiresPeriodicRefresh} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${VarInput}
    )

    Process {
        'Creating PSCustomObject: Tm.V2024 => V2024Lookup' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Table) {
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

Convert from JSON to Lookup<PSCustomObject>

.DESCRIPTION

Convert from JSON to Lookup<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Lookup<PSCustomObject>
#>
function ConvertFrom-V2024JsonToLookup {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V2024 => V2024Lookup' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024Lookup
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

