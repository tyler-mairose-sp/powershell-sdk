#
# Identity Security Cloud V3 API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER IdentityProfiles
The IdentityProfile attached to this source
.PARAMETER CredentialProfiles
Name of the CredentialProfile attached to this source
.PARAMETER SourceAttributes
The attributes attached to this source
.PARAMETER MappingProfiles
The profiles attached to this source
.PARAMETER DependentCustomTransforms
No description available.
.PARAMETER DependentApps
No description available.
.PARAMETER MissingDependents
No description available.
.OUTPUTS

SourceConnectionsDto<PSCustomObject>
#>

function Initialize-SourceConnectionsDto {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${IdentityProfiles},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${CredentialProfiles},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${SourceAttributes},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${MappingProfiles},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${DependentCustomTransforms},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${DependentApps},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${MissingDependents}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => SourceConnectionsDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "identityProfiles" = ${IdentityProfiles}
            "credentialProfiles" = ${CredentialProfiles}
            "sourceAttributes" = ${SourceAttributes}
            "mappingProfiles" = ${MappingProfiles}
            "dependentCustomTransforms" = ${DependentCustomTransforms}
            "dependentApps" = ${DependentApps}
            "missingDependents" = ${MissingDependents}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SourceConnectionsDto<PSCustomObject>

.DESCRIPTION

Convert from JSON to SourceConnectionsDto<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SourceConnectionsDto<PSCustomObject>
#>
function ConvertFrom-JsonToSourceConnectionsDto {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => SourceConnectionsDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in SourceConnectionsDto
        $AllProperties = ("identityProfiles", "credentialProfiles", "sourceAttributes", "mappingProfiles", "dependentCustomTransforms", "dependentApps", "missingDependents")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identityProfiles"))) { #optional property not found
            $IdentityProfiles = $null
        } else {
            $IdentityProfiles = $JsonParameters.PSobject.Properties["identityProfiles"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "credentialProfiles"))) { #optional property not found
            $CredentialProfiles = $null
        } else {
            $CredentialProfiles = $JsonParameters.PSobject.Properties["credentialProfiles"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sourceAttributes"))) { #optional property not found
            $SourceAttributes = $null
        } else {
            $SourceAttributes = $JsonParameters.PSobject.Properties["sourceAttributes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "mappingProfiles"))) { #optional property not found
            $MappingProfiles = $null
        } else {
            $MappingProfiles = $JsonParameters.PSobject.Properties["mappingProfiles"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "dependentCustomTransforms"))) { #optional property not found
            $DependentCustomTransforms = $null
        } else {
            $DependentCustomTransforms = $JsonParameters.PSobject.Properties["dependentCustomTransforms"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "dependentApps"))) { #optional property not found
            $DependentApps = $null
        } else {
            $DependentApps = $JsonParameters.PSobject.Properties["dependentApps"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "missingDependents"))) { #optional property not found
            $MissingDependents = $null
        } else {
            $MissingDependents = $JsonParameters.PSobject.Properties["missingDependents"].value
        }

        $PSO = [PSCustomObject]@{
            "identityProfiles" = ${IdentityProfiles}
            "credentialProfiles" = ${CredentialProfiles}
            "sourceAttributes" = ${SourceAttributes}
            "mappingProfiles" = ${MappingProfiles}
            "dependentCustomTransforms" = ${DependentCustomTransforms}
            "dependentApps" = ${DependentApps}
            "missingDependents" = ${MissingDependents}
        }

        return $PSO
    }

}

