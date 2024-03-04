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

Config required if BASIC_AUTH is used.

.PARAMETER UserName
The username to authenticate.
.PARAMETER Password
The password to authenticate. On response, this field is set to null as to not return secrets.
.OUTPUTS

BasicAuthConfig<PSCustomObject>
#>

function Initialize-BetaBasicAuthConfig {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${UserName},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Password}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaBasicAuthConfig' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "userName" = ${UserName}
            "password" = ${Password}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to BasicAuthConfig<PSCustomObject>

.DESCRIPTION

Convert from JSON to BasicAuthConfig<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

BasicAuthConfig<PSCustomObject>
#>
function ConvertFrom-BetaJsonToBasicAuthConfig {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaBasicAuthConfig' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaBasicAuthConfig
        $AllProperties = ("userName", "password")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "userName"))) { #optional property not found
            $UserName = $null
        } else {
            $UserName = $JsonParameters.PSobject.Properties["userName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "password"))) { #optional property not found
            $Password = $null
        } else {
            $Password = $JsonParameters.PSobject.Properties["password"].value
        }

        $PSO = [PSCustomObject]@{
            "userName" = ${UserName}
            "password" = ${Password}
        }

        return $PSO
    }

}

