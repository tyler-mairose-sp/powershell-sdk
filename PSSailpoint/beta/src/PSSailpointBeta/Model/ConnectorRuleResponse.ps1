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

ConnectorRuleResponse

.PARAMETER Name
the name of the rule
.PARAMETER Description
a description of the rule's purpose
.PARAMETER Type
the type of rule
.PARAMETER Signature
No description available.
.PARAMETER SourceCode
No description available.
.PARAMETER Attributes
a map of string to objects
.PARAMETER Id
the ID of the rule
.PARAMETER Created
an ISO 8601 UTC timestamp when this rule was created
.PARAMETER Modified
an ISO 8601 UTC timestamp when this rule was last modified
.OUTPUTS

ConnectorRuleResponse<PSCustomObject>
#>

function Initialize-BetaConnectorRuleResponse {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("BuildMap", "ConnectorAfterCreate", "ConnectorAfterDelete", "ConnectorAfterModify", "ConnectorBeforeCreate", "ConnectorBeforeDelete", "ConnectorBeforeModify", "JDBCBuildMap", "JDBCOperationProvisioning", "JDBCProvision", "PeopleSoftHRMSBuildMap", "PeopleSoftHRMSOperationProvisioning", "PeopleSoftHRMSProvision", "RACFPermissionCustomization", "SAPBuildMap", "SapHrManagerRule", "SapHrOperationProvisioning", "SapHrProvision", "SuccessFactorsOperationProvisioning", "WebServiceAfterOperationRule", "WebServiceBeforeOperationRule")]
        [String]
        ${Type},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Signature},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${SourceCode},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Attributes},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Created},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Modified}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaConnectorRuleResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if ($Name.length -gt 128) {
            throw "invalid value for 'Name', the character length must be smaller than or equal to 128."
        }

        if ($Name.length -lt 1) {
            throw "invalid value for 'Name', the character length must be great than or equal to 1."
        }

        if (!$Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }

        if (!$SourceCode) {
            throw "invalid value for 'SourceCode', 'SourceCode' cannot be null."
        }

        if (!$Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if (!$Created) {
            throw "invalid value for 'Created', 'Created' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "description" = ${Description}
            "type" = ${Type}
            "signature" = ${Signature}
            "sourceCode" = ${SourceCode}
            "attributes" = ${Attributes}
            "id" = ${Id}
            "created" = ${Created}
            "modified" = ${Modified}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ConnectorRuleResponse<PSCustomObject>

.DESCRIPTION

Convert from JSON to ConnectorRuleResponse<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ConnectorRuleResponse<PSCustomObject>
#>
function ConvertFrom-BetaJsonToConnectorRuleResponse {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaConnectorRuleResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaConnectorRuleResponse
        $AllProperties = ("name", "description", "type", "signature", "sourceCode", "attributes", "id", "created", "modified")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) {
            throw "Error! JSON cannot be serialized due to the required property 'type' missing."
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sourceCode"))) {
            throw "Error! JSON cannot be serialized due to the required property 'sourceCode' missing."
        } else {
            $SourceCode = $JsonParameters.PSobject.Properties["sourceCode"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) {
            throw "Error! JSON cannot be serialized due to the required property 'id' missing."
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) {
            throw "Error! JSON cannot be serialized due to the required property 'created' missing."
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "signature"))) { #optional property not found
            $Signature = $null
        } else {
            $Signature = $JsonParameters.PSobject.Properties["signature"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attributes"))) { #optional property not found
            $Attributes = $null
        } else {
            $Attributes = $JsonParameters.PSobject.Properties["attributes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "modified"))) { #optional property not found
            $Modified = $null
        } else {
            $Modified = $JsonParameters.PSobject.Properties["modified"].value
        }

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "description" = ${Description}
            "type" = ${Type}
            "signature" = ${Signature}
            "sourceCode" = ${SourceCode}
            "attributes" = ${Attributes}
            "id" = ${Id}
            "created" = ${Created}
            "modified" = ${Modified}
        }

        return $PSO
    }

}

