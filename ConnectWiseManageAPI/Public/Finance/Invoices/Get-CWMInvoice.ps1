function Get-CWMInvoice {
    [CmdletBinding()]
    param(
        [int]$invoiceId,
        [int]$id,
        [switch]$count,
        [string]$condition,
        [ValidatePattern('\S* (desc|asc)')][string]$orderBy,
        [string]$childConditions,
        [string]$customFieldConditions,
        [int]$page,
        [int]$pageSize,
        [string[]]$fields,
        [switch]$all

    )

    $Endpoint = "/finance/invoices/"
    
    if($invoiceId){ $Endpoint = Join-Url $Endpoint $invoiceId }   

    return Invoke-CWMGetMaster -Arguments $PsBoundParameters -Endpoint $Endpoint
}