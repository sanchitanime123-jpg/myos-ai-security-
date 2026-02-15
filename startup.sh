#!/bin/bash

echo "[SYSTEM] Initializing My Custom OS..."
echo "[SYSTEM] Mounting filesystems..."

# 1. Initialize Security
echo "[SECURITY] Starting Security Daemon (PID: $$)..."
python3 /root/security_daemon.py &
SEC_PID=$!

# 2. Initialize AI
echo "[AI] Booting AI Engine..."
python3 /root/ai_engine.py &
AI_PID=$!

# 3. Prepare Windows Support
echo "[COMPAT] Checking Windows App Support..."
/root/install_wine.sh > /dev/null 2>&1 &

# Keep the container (OS) running and show a shell
echo "[SYSTEM] OS Ready. Type 'help' for AI assistance."
tail -f /dev/null & wait $SEC_PID $AI_PID
