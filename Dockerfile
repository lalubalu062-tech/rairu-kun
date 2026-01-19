FROM python:3.10-slim

# Tmate aur zaroori tools install karna
RUN apt-get update && apt-get install -y \
    git \
    tmate \
    curl \
    ffmpeg \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

# Bot ki requirements
RUN pip install playwright && playwright install chromium && playwright install-deps

# Ye command Tmate start karegi aur Link generate karegi
CMD tmate -F
