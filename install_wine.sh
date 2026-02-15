#!/bin/bash
echo "[WINE] Configuring Windows Compatibility Layer..."
# Configure Wine (Usually runs automatically, but this is where you would do specific config)
winecfg > /dev/null 2>&1
echo "[WINE] Ready to execute .exe files."
