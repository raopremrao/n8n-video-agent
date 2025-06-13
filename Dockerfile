# Use an n8n base image
FROM n8nio/n8n:latest

# Install ffmpeg and yt-dlp
# Using apt-get for Debian/Ubuntu based n8n image
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    ffmpeg \
    python3 \
    python3-pip \
    && \
    pip3 install yt-dlp \
    && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# You can add custom commands or environment variables here if needed
