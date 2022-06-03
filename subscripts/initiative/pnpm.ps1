Write-Host "> pnpm.ps1";

Write-Host "> pnpm setup;";
pnpm setup;

Refresh-Environment;

Write-Host "> start powershell -Wait {pnpm install --global typescript > './pnpm_log.txt';};";
start powershell -Wait {pnpm install --global typescript > "./pnpm_log.txt";};

Write-Host "end of pnpm.ps1";

Refresh-Environment;