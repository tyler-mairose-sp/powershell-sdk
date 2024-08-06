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

.PARAMETER Certification
No description available.
.OUTPUTS

CertificationSignedOff<PSCustomObject>
#>

function Initialize-V2024CertificationSignedOff {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Certification}
    )

    Process {
        'Creating PSCustomObject: PSSailpointV2024 => V2024CertificationSignedOff' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Certification) {
            throw "invalid value for 'Certification', 'Certification' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "certification" = ${Certification}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CertificationSignedOff<PSCustomObject>

.DESCRIPTION

Convert from JSON to CertificationSignedOff<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CertificationSignedOff<PSCustomObject>
#>
function ConvertFrom-V2024JsonToCertificationSignedOff {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointV2024 => V2024CertificationSignedOff' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024CertificationSignedOff
        $AllProperties = ("certification")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'certification' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "certification"))) {
            throw "Error! JSON cannot be serialized due to the required property 'certification' missing."
        } else {
            $Certification = $JsonParameters.PSobject.Properties["certification"].value
        }

        $PSO = [PSCustomObject]@{
            "certification" = ${Certification}
        }

        return $PSO
    }

}

