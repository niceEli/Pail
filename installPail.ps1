$buckets = @{
    "versions" = $null
    "extras" = $null
    "Pail" = "https://github.com/niceEli/Pail"
}

foreach ($bucket in $buckets.Keys) {
    $bucketExists = scoop bucket list | Where-Object { $_ -like "*$bucket*" }

    if (-not $bucketExists) {
        Write-Output "Adding bucket: $bucket"
        & scoop bucket add $bucket $buckets[$bucket]
    } else {
        Write-Output "Bucket $bucket already exists, skipping."
    }
}
