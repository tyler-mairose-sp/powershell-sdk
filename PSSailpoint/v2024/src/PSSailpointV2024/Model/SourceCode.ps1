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

SourceCode

.PARAMETER Version
the version of the code
.PARAMETER Script
The code
.OUTPUTS

SourceCode<PSCustomObject>
#>

function Initialize-V2024SourceCode {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Version},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Script}
    )

    Process {
        'Creating PSCustomObject: PSSailpointV2024 => V2024SourceCode' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Version) {
            throw "invalid value for 'Version', 'Version' cannot be null."
        }

        if (!$Script) {
            throw "invalid value for 'Script', 'Script' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "version" = ${Version}
            "script" = ${Script}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SourceCode<PSCustomObject>

.DESCRIPTION

Convert from JSON to SourceCode<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SourceCode<PSCustomObject>
#>
function ConvertFrom-V2024JsonToSourceCode {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointV2024 => V2024SourceCode' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024SourceCode
        $AllProperties = ("version", "script")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'version' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "version"))) {
            throw "Error! JSON cannot be serialized due to the required property 'version' missing."
        } else {
            $Version = $JsonParameters.PSobject.Properties["version"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "script"))) {
            throw "Error! JSON cannot be serialized due to the required property 'script' missing."
        } else {
            $Script = $JsonParameters.PSobject.Properties["script"].value
        }

        $PSO = [PSCustomObject]@{
            "version" = ${Version}
            "script" = ${Script}
        }

        return $PSO
    }

}

