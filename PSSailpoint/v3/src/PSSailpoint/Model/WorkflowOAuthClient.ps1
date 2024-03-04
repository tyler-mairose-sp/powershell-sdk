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

.PARAMETER Id
OAuth client ID for the trigger. This is a UUID generated upon creation.
.PARAMETER Secret
OAuthClient secret.
.PARAMETER Url
URL for the external trigger to invoke
.OUTPUTS

WorkflowOAuthClient<PSCustomObject>
#>

function Initialize-WorkflowOAuthClient {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Secret},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Url}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => WorkflowOAuthClient' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "secret" = ${Secret}
            "url" = ${Url}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WorkflowOAuthClient<PSCustomObject>

.DESCRIPTION

Convert from JSON to WorkflowOAuthClient<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WorkflowOAuthClient<PSCustomObject>
#>
function ConvertFrom-JsonToWorkflowOAuthClient {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => WorkflowOAuthClient' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in WorkflowOAuthClient
        $AllProperties = ("id", "secret", "url")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "secret"))) { #optional property not found
            $Secret = $null
        } else {
            $Secret = $JsonParameters.PSobject.Properties["secret"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "url"))) { #optional property not found
            $Url = $null
        } else {
            $Url = $JsonParameters.PSobject.Properties["url"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "secret" = ${Secret}
            "url" = ${Url}
        }

        return $PSO
    }

}

