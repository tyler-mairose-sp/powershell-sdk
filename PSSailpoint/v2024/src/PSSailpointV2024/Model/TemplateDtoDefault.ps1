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

.PARAMETER Key
The key of the default template
.PARAMETER Name
The name of the default template
.PARAMETER Medium
The message medium. More mediums may be added in the future.
.PARAMETER Locale
The locale for the message text, a BCP 47 language tag.
.PARAMETER Subject
The subject of the default template
.PARAMETER Header
The header value is now located within the body field. If included with non-null values, will result in a 400.
.PARAMETER Body
The body of the default template
.PARAMETER Footer
The footer value is now located within the body field. If included with non-null values, will result in a 400.
.PARAMETER VarFrom
The ""From:"" address of the default template
.PARAMETER ReplyTo
The ""Reply To"" field of the default template
.PARAMETER Description
The description of the default template
.PARAMETER SlackTemplate
No description available.
.PARAMETER TeamsTemplate
No description available.
.OUTPUTS

TemplateDtoDefault<PSCustomObject>
#>

function Initialize-V2024TemplateDtoDefault {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Key},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("EMAIL", "PHONE", "SMS", "SLACK", "TEAMS")]
        [String]
        ${Medium},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Locale},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Subject},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Header},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Body},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Footer},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${VarFrom},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ReplyTo},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${SlackTemplate},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${TeamsTemplate}
    )

    Process {
        'Creating PSCustomObject: PSSailpointV2024 => V2024TemplateDtoDefault' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "key" = ${Key}
            "name" = ${Name}
            "medium" = ${Medium}
            "locale" = ${Locale}
            "subject" = ${Subject}
            "header" = ${Header}
            "body" = ${Body}
            "footer" = ${Footer}
            "from" = ${VarFrom}
            "replyTo" = ${ReplyTo}
            "description" = ${Description}
            "slackTemplate" = ${SlackTemplate}
            "teamsTemplate" = ${TeamsTemplate}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to TemplateDtoDefault<PSCustomObject>

.DESCRIPTION

Convert from JSON to TemplateDtoDefault<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

TemplateDtoDefault<PSCustomObject>
#>
function ConvertFrom-V2024JsonToTemplateDtoDefault {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointV2024 => V2024TemplateDtoDefault' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024TemplateDtoDefault
        $AllProperties = ("key", "name", "medium", "locale", "subject", "header", "body", "footer", "from", "replyTo", "description", "slackTemplate", "teamsTemplate")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "key"))) { #optional property not found
            $Key = $null
        } else {
            $Key = $JsonParameters.PSobject.Properties["key"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "medium"))) { #optional property not found
            $Medium = $null
        } else {
            $Medium = $JsonParameters.PSobject.Properties["medium"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "locale"))) { #optional property not found
            $Locale = $null
        } else {
            $Locale = $JsonParameters.PSobject.Properties["locale"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "subject"))) { #optional property not found
            $Subject = $null
        } else {
            $Subject = $JsonParameters.PSobject.Properties["subject"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "header"))) { #optional property not found
            $Header = $null
        } else {
            $Header = $JsonParameters.PSobject.Properties["header"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "body"))) { #optional property not found
            $Body = $null
        } else {
            $Body = $JsonParameters.PSobject.Properties["body"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "footer"))) { #optional property not found
            $Footer = $null
        } else {
            $Footer = $JsonParameters.PSobject.Properties["footer"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "from"))) { #optional property not found
            $VarFrom = $null
        } else {
            $VarFrom = $JsonParameters.PSobject.Properties["from"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "replyTo"))) { #optional property not found
            $ReplyTo = $null
        } else {
            $ReplyTo = $JsonParameters.PSobject.Properties["replyTo"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "slackTemplate"))) { #optional property not found
            $SlackTemplate = $null
        } else {
            $SlackTemplate = $JsonParameters.PSobject.Properties["slackTemplate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "teamsTemplate"))) { #optional property not found
            $TeamsTemplate = $null
        } else {
            $TeamsTemplate = $JsonParameters.PSobject.Properties["teamsTemplate"].value
        }

        $PSO = [PSCustomObject]@{
            "key" = ${Key}
            "name" = ${Name}
            "medium" = ${Medium}
            "locale" = ${Locale}
            "subject" = ${Subject}
            "header" = ${Header}
            "body" = ${Body}
            "footer" = ${Footer}
            "from" = ${VarFrom}
            "replyTo" = ${ReplyTo}
            "description" = ${Description}
            "slackTemplate" = ${SlackTemplate}
            "teamsTemplate" = ${TeamsTemplate}
        }

        return $PSO
    }

}

