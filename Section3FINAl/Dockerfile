# Midterm - Multi-stage, digest-pinned Docker build

# Stage 1: Builder
FROM python:3.11-slim@sha256:07d4824036af339fa1b6ef769cc99d9c10a141769538b52b3b597c84f7a7b535 AS builder

WORKDIR /build

COPY requirements.txt .

RUN pip install --no-cache-dir --prefix=/install -r requirements.txt


# Stage 2: Minimal runtime
FROM python:3.11-slim@sha256:07d4824036af339fa1b6ef769cc99d9c10a141769538b52b3b597c84f7a7b535 AS runtime

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Create a dedicated non-root account
RUN groupadd --system appgroup && \
    useradd --system \
    --gid appgroup \
    --home-dir /app \
    --shell /usr/sbin/nologin \
    appuser

WORKDIR /app

# Copy installed Python dependencies from the builder
COPY --from=builder /install /usr/local

# Copy application files and assign ownership
COPY --chown=appuser:appgroup app.py /app/

# Run as an unprivileged user
USER appuser

EXPOSE 5000

CMD ["python", "app.py"]
