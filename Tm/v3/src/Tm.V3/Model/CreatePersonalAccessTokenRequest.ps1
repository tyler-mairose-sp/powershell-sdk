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

Object for specifying the name of a personal access token to create

.PARAMETER Name
The name of the personal access token (PAT) to be created. Cannot be the same as another PAT owned by the user for whom this PAT is being created.
.PARAMETER Scope
Scopes of the personal  access token. If no scope is specified, the token will be created with the default scope ""sp:scopes:all"". This means the personal access token will have all the rights of the owner who created it.
.OUTPUTS

CreatePersonalAccessTokenRequest<PSCustomObject>
#>

function Initialize-CreatePersonalAccessTokenRequest {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Scope}
    )

    Process {
        'Creating PSCustomObject: Tm.V3 => CreatePersonalAccessTokenRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "scope" = ${Scope}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CreatePersonalAccessTokenRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to CreatePersonalAccessTokenRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CreatePersonalAccessTokenRequest<PSCustomObject>
#>
function ConvertFrom-JsonToCreatePersonalAccessTokenRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V3 => CreatePersonalAccessTokenRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in CreatePersonalAccessTokenRequest
        $AllProperties = ("name", "scope")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'name' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) {
            throw "Error! JSON cannot be serialized due to the required property 'name' missing."
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "scope"))) { #optional property not found
            $Scope = $null
        } else {
            $Scope = $JsonParameters.PSobject.Properties["scope"].value
        }

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "scope" = ${Scope}
        }

        return $PSO
    }

}

