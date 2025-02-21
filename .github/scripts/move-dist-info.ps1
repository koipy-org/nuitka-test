$targetDir = "dist-info-files"
New-Item -ItemType Directory -Force -Path $targetDir

# 查找并移动所有 .dist-info 结尾的文件夹
Get-ChildItem -Path . -Filter "*.dist-info" -Directory |
ForEach-Object {
  Write-Output "Moving $($_.Name) to $targetDir"
  Move-Item -Path $_.FullName -Destination "$targetDir/$($_.Name)" -Force
}
Write-Host "All dist-info have been moved to $targetDir folder."