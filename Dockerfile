# Use Ubuntu 22.04 as the base
FROM ubuntu:22.04

# Prevent interactive prompts during installation
ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies: Python for AI, and general tools
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    wget \
    wine64 \
    wine32 \
    libwine \
    && rm -rf /var/lib/apt/lists/*

# Copy our custom OS scripts into the image
COPY startup.sh /root/startup.sh
COPY security_daemon.py /root/
COPY ai_engine.py /root/
COPY install_wine.sh /root/

# Make scripts executable
RUN chmod +x /root/*.sh

# Set the startup script to run when the OS boots
CMD ["/root/startup.sh"]
