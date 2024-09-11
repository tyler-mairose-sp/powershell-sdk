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

KBA Configuration

.PARAMETER Id
KBA Question Id
.PARAMETER Text
KBA Question description
.PARAMETER HasAnswer
Denotes whether the KBA question has an answer configured for any user in the tenant
.PARAMETER NumAnswers
Denotes the number of KBA configurations for this question
.OUTPUTS

KbaQuestion<PSCustomObject>
#>

function Initialize-V2024KbaQuestion {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Text},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${HasAnswer},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${NumAnswers}
    )

    Process {
        'Creating PSCustomObject: Tm.V2024 => V2024KbaQuestion' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if (!$Text) {
            throw "invalid value for 'Text', 'Text' cannot be null."
        }

        if (!$HasAnswer) {
            throw "invalid value for 'HasAnswer', 'HasAnswer' cannot be null."
        }

        if (!$NumAnswers) {
            throw "invalid value for 'NumAnswers', 'NumAnswers' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "text" = ${Text}
            "hasAnswer" = ${HasAnswer}
            "numAnswers" = ${NumAnswers}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to KbaQuestion<PSCustomObject>

.DESCRIPTION

Convert from JSON to KbaQuestion<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

KbaQuestion<PSCustomObject>
#>
function ConvertFrom-V2024JsonToKbaQuestion {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V2024 => V2024KbaQuestion' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024KbaQuestion
        $AllProperties = ("id", "text", "hasAnswer", "numAnswers")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "text"))) {
            throw "Error! JSON cannot be serialized due to the required property 'text' missing."
        } else {
            $Text = $JsonParameters.PSobject.Properties["text"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "hasAnswer"))) {
            throw "Error! JSON cannot be serialized due to the required property 'hasAnswer' missing."
        } else {
            $HasAnswer = $JsonParameters.PSobject.Properties["hasAnswer"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "numAnswers"))) {
            throw "Error! JSON cannot be serialized due to the required property 'numAnswers' missing."
        } else {
            $NumAnswers = $JsonParameters.PSobject.Properties["numAnswers"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "text" = ${Text}
            "hasAnswer" = ${HasAnswer}
            "numAnswers" = ${NumAnswers}
        }

        return $PSO
    }

}

