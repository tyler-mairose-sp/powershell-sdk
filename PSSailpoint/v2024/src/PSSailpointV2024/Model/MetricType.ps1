#
# Identity Security Cloud V2024 API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: v2024
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Enum MetricType.

.DESCRIPTION

Enum representing the currently supported metric aggregation types. Additional values may be added in the future without notice.
#>

enum MetricType {
    # enum value: "COUNT"
    COUNT
    # enum value: "UNIQUE_COUNT"
    UNIQUE_COUNT
    # enum value: "AVG"
    AVG
    # enum value: "SUM"
    SUM
    # enum value: "MEDIAN"
    MEDIAN
    # enum value: "MIN"
    MIN
    # enum value: "MAX"
    MAX
}

