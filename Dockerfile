FROM python:3.10-slim

# Tools install karna
RUN apt-get update && apt-get install -y \
    git \
    tmate \
    curl \
    ffmpeg \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

# Bot requirements
RUN pip install playwright && playwright install chromium && playwright install-deps

# FIX: Pehle ek nakli server chalao (8000 par), fir Tmate chalao
CMD python3 -m http.server 8000 & tmate -F
