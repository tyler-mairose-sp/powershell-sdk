#
# Identity Security Cloud Beta API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. These APIs are in beta and are subject to change. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.1.0-beta
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

MAIL FROM attributes for a domain / identity

.PARAMETER Identity
The email identity
.PARAMETER MailFromDomain
The name of a domain that an email identity uses as a custom MAIL FROM domain
.PARAMETER MxRecord
MX record that is required in customer's DNS to allow the domain to receive bounce and complaint notifications that email providers send you
.PARAMETER TxtRecord
TXT record that is required in customer's DNS in order to prove that Amazon SES is authorized to send email from your domain
.PARAMETER MailFromDomainStatus
The current status of the MAIL FROM verification
.OUTPUTS

MailFromAttributes<PSCustomObject>
#>

function Initialize-BetaMailFromAttributes {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Identity},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${MailFromDomain},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${MxRecord},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TxtRecord},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("PENDING", "SUCCESS", "FAILED")]
        [String]
        ${MailFromDomainStatus}
    )

    Process {
        'Creating PSCustomObject: Tm.Beta => BetaMailFromAttributes' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "identity" = ${Identity}
            "mailFromDomain" = ${MailFromDomain}
            "mxRecord" = ${MxRecord}
            "txtRecord" = ${TxtRecord}
            "mailFromDomainStatus" = ${MailFromDomainStatus}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to MailFromAttributes<PSCustomObject>

.DESCRIPTION

Convert from JSON to MailFromAttributes<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

MailFromAttributes<PSCustomObject>
#>
function ConvertFrom-BetaJsonToMailFromAttributes {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.Beta => BetaMailFromAttributes' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaMailFromAttributes
        $AllProperties = ("identity", "mailFromDomain", "mxRecord", "txtRecord", "mailFromDomainStatus")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identity"))) { #optional property not found
            $Identity = $null
        } else {
            $Identity = $JsonParameters.PSobject.Properties["identity"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "mailFromDomain"))) { #optional property not found
            $MailFromDomain = $null
        } else {
            $MailFromDomain = $JsonParameters.PSobject.Properties["mailFromDomain"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "mxRecord"))) { #optional property not found
            $MxRecord = $null
        } else {
            $MxRecord = $JsonParameters.PSobject.Properties["mxRecord"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "txtRecord"))) { #optional property not found
            $TxtRecord = $null
        } else {
            $TxtRecord = $JsonParameters.PSobject.Properties["txtRecord"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "mailFromDomainStatus"))) { #optional property not found
            $MailFromDomainStatus = $null
        } else {
            $MailFromDomainStatus = $JsonParameters.PSobject.Properties["mailFromDomainStatus"].value
        }

        $PSO = [PSCustomObject]@{
            "identity" = ${Identity}
            "mailFromDomain" = ${MailFromDomain}
            "mxRecord" = ${MxRecord}
            "txtRecord" = ${TxtRecord}
            "mailFromDomainStatus" = ${MailFromDomainStatus}
        }

        return $PSO
    }

}

