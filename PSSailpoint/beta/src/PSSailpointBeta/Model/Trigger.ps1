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

.PARAMETER Id
Unique identifier of the trigger.
.PARAMETER Name
Trigger Name.
.PARAMETER Type
No description available.
.PARAMETER Description
Trigger Description.
.PARAMETER InputSchema
The JSON schema of the payload that will be sent by the trigger to the subscribed service.
.PARAMETER ExampleInput
No description available.
.PARAMETER OutputSchema
The JSON schema of the response that will be sent by the subscribed service to the trigger in response to an event.  This only applies to a trigger type of `REQUEST_RESPONSE`.
.PARAMETER ExampleOutput
No description available.
.OUTPUTS

Trigger<PSCustomObject>
#>

function Initialize-BetaTrigger {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("REQUEST_RESPONSE", "FIRE_AND_FORGET")]
        [PSCustomObject]
        ${Type},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${InputSchema},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ExampleInput},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${OutputSchema},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ExampleOutput}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaTrigger' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if (!$Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if (!$Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }

        if (!$InputSchema) {
            throw "invalid value for 'InputSchema', 'InputSchema' cannot be null."
        }

        if (!$ExampleInput) {
            throw "invalid value for 'ExampleInput', 'ExampleInput' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "type" = ${Type}
            "description" = ${Description}
            "inputSchema" = ${InputSchema}
            "exampleInput" = ${ExampleInput}
            "outputSchema" = ${OutputSchema}
            "exampleOutput" = ${ExampleOutput}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Trigger<PSCustomObject>

.DESCRIPTION

Convert from JSON to Trigger<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Trigger<PSCustomObject>
#>
function ConvertFrom-BetaJsonToTrigger {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaTrigger' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaTrigger
        $AllProperties = ("id", "name", "type", "description", "inputSchema", "exampleInput", "outputSchema", "exampleOutput")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'id' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) {
            throw "Error! JSON cannot be serialized due to the required property 'id' missing."
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) {
            throw "Error! JSON cannot be serialized due to the required property 'name' missing."
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) {
            throw "Error! JSON cannot be serialized due to the required property 'type' missing."
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "inputSchema"))) {
            throw "Error! JSON cannot be serialized due to the required property 'inputSchema' missing."
        } else {
            $InputSchema = $JsonParameters.PSobject.Properties["inputSchema"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "exampleInput"))) {
            throw "Error! JSON cannot be serialized due to the required property 'exampleInput' missing."
        } else {
            $ExampleInput = $JsonParameters.PSobject.Properties["exampleInput"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "outputSchema"))) { #optional property not found
            $OutputSchema = $null
        } else {
            $OutputSchema = $JsonParameters.PSobject.Properties["outputSchema"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "exampleOutput"))) { #optional property not found
            $ExampleOutput = $null
        } else {
            $ExampleOutput = $JsonParameters.PSobject.Properties["exampleOutput"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "type" = ${Type}
            "description" = ${Description}
            "inputSchema" = ${InputSchema}
            "exampleInput" = ${ExampleInput}
            "outputSchema" = ${OutputSchema}
            "exampleOutput" = ${ExampleOutput}
        }

        return $PSO
    }

}

