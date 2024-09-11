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

Arguments for Identity Profile Identity Error report (IDENTITY_PROFILE_IDENTITY_ERROR)

.PARAMETER AuthoritativeSource
Source Id to be checked on errors of identity profiles aggregation
.OUTPUTS

IdentityProfileIdentityErrorReportArguments<PSCustomObject>
#>

function Initialize-V2024IdentityProfileIdentityErrorReportArguments {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AuthoritativeSource}
    )

    Process {
        'Creating PSCustomObject: Tm.V2024 => V2024IdentityProfileIdentityErrorReportArguments' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$AuthoritativeSource) {
            throw "invalid value for 'AuthoritativeSource', 'AuthoritativeSource' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "authoritativeSource" = ${AuthoritativeSource}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to IdentityProfileIdentityErrorReportArguments<PSCustomObject>

.DESCRIPTION

Convert from JSON to IdentityProfileIdentityErrorReportArguments<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

IdentityProfileIdentityErrorReportArguments<PSCustomObject>
#>
function ConvertFrom-V2024JsonToIdentityProfileIdentityErrorReportArguments {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V2024 => V2024IdentityProfileIdentityErrorReportArguments' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024IdentityProfileIdentityErrorReportArguments
        $AllProperties = ("authoritativeSource")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'authoritativeSource' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "authoritativeSource"))) {
            throw "Error! JSON cannot be serialized due to the required property 'authoritativeSource' missing."
        } else {
            $AuthoritativeSource = $JsonParameters.PSobject.Properties["authoritativeSource"].value
        }

        $PSO = [PSCustomObject]@{
            "authoritativeSource" = ${AuthoritativeSource}
        }

        return $PSO
    }

}

