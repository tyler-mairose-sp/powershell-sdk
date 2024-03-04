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

.PARAMETER OutputSchema
OutputSchema holds a JSON schema generated dynamically
.OUTPUTS

FormDefinitionDynamicSchemaResponse<PSCustomObject>
#>

function Initialize-BetaFormDefinitionDynamicSchemaResponse {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${OutputSchema}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaFormDefinitionDynamicSchemaResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "outputSchema" = ${OutputSchema}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to FormDefinitionDynamicSchemaResponse<PSCustomObject>

.DESCRIPTION

Convert from JSON to FormDefinitionDynamicSchemaResponse<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

FormDefinitionDynamicSchemaResponse<PSCustomObject>
#>
function ConvertFrom-BetaJsonToFormDefinitionDynamicSchemaResponse {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaFormDefinitionDynamicSchemaResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaFormDefinitionDynamicSchemaResponse
        $AllProperties = ("outputSchema")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "outputSchema"))) { #optional property not found
            $OutputSchema = $null
        } else {
            $OutputSchema = $JsonParameters.PSobject.Properties["outputSchema"].value
        }

        $PSO = [PSCustomObject]@{
            "outputSchema" = ${OutputSchema}
        }

        return $PSO
    }

}

