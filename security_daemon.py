import time
import random

def monitor_system():
    print("Security Daemon: Active and monitoring...")
    while True:
        # Simulate security monitoring
        time.sleep(5)
        
        # Simulate random threat check
        threat_level = random.choice(["Safe", "Safe", "Safe", "Safe", "Safe", "Threat Detected"])
        
        if threat_level == "Threat Detected":
            print(f"[SECURITY ALERT] Anomaly detected! Neutralizing threat...")
        else:
            print(f"[SECURITY] System Integrity: 100%")

if __name__ == "__main__":
    monitor_system()
