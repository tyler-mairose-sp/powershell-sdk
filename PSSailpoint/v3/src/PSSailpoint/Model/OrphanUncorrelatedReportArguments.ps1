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

Arguments for Orphan Identities report (ORPHAN_IDENTITIES) and Uncorrelated Accounts report (UNCORRELATED_ACCOUNTS)

.PARAMETER SelectedFormats
Output report file formats. This are formats for calling get endpoint as a query parameter 'fileFormat'.  In case report won't have this argument there will be ['CSV', 'PDF'] as default.
.PARAMETER DefaultS3Bucket
Use it to set default s3 bucket where generated report will be saved.  In case this argument is false and 's3Bucket' argument is null or absent there will be default s3Bucket assigned to the report.
.PARAMETER S3Bucket
If you want to be specific you could use this argument with defaultS3Bucket = false.
.OUTPUTS

OrphanUncorrelatedReportArguments<PSCustomObject>
#>

function Initialize-OrphanUncorrelatedReportArguments {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("CSV", "PDF")]
        [String[]]
        ${SelectedFormats},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${DefaultS3Bucket},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${S3Bucket}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => OrphanUncorrelatedReportArguments' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$DefaultS3Bucket) {
            throw "invalid value for 'DefaultS3Bucket', 'DefaultS3Bucket' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "selectedFormats" = ${SelectedFormats}
            "defaultS3Bucket" = ${DefaultS3Bucket}
            "s3Bucket" = ${S3Bucket}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to OrphanUncorrelatedReportArguments<PSCustomObject>

.DESCRIPTION

Convert from JSON to OrphanUncorrelatedReportArguments<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

OrphanUncorrelatedReportArguments<PSCustomObject>
#>
function ConvertFrom-JsonToOrphanUncorrelatedReportArguments {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => OrphanUncorrelatedReportArguments' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OrphanUncorrelatedReportArguments
        $AllProperties = ("selectedFormats", "defaultS3Bucket", "s3Bucket")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'defaultS3Bucket' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "defaultS3Bucket"))) {
            throw "Error! JSON cannot be serialized due to the required property 'defaultS3Bucket' missing."
        } else {
            $DefaultS3Bucket = $JsonParameters.PSobject.Properties["defaultS3Bucket"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "selectedFormats"))) { #optional property not found
            $SelectedFormats = $null
        } else {
            $SelectedFormats = $JsonParameters.PSobject.Properties["selectedFormats"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "s3Bucket"))) { #optional property not found
            $S3Bucket = $null
        } else {
            $S3Bucket = $JsonParameters.PSobject.Properties["s3Bucket"].value
        }

        $PSO = [PSCustomObject]@{
            "selectedFormats" = ${SelectedFormats}
            "defaultS3Bucket" = ${DefaultS3Bucket}
            "s3Bucket" = ${S3Bucket}
        }

        return $PSO
    }

}

