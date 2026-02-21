# ──────────────────────────────────────────────────
# Stage 1: Build validation
# ──────────────────────────────────────────────────
FROM node:20-alpine AS validator

WORKDIR /app

# Copy HTML file for validation
COPY architecture_diagram.html .

# Validate HTML file exists and is not empty
RUN test -s architecture_diagram.html || (echo "ERROR: architecture_diagram.html is missing or empty" && exit 1)

# ──────────────────────────────────────────────────
# Stage 2: Production with Nginx
# ──────────────────────────────────────────────────
FROM nginx:1.29-alpine AS production

# Add metadata labels
LABEL maintainer="nadeeshame"
LABEL org.opencontainers.image.title="RepoSync Architecture Diagram"
LABEL org.opencontainers.image.description="Professional interactive architecture diagram for RepoSync - Automated RAG Knowledge Base Updater"
LABEL org.opencontainers.image.url="https://repo-sync-architecture.netlify.app/"
LABEL org.opencontainers.image.source="https://github.com/nadeeshame/RepoSync-Architecture"
LABEL org.opencontainers.image.licenses="MIT"

# Remove default nginx config and static files
RUN rm -rf /usr/share/nginx/html/* /etc/nginx/conf.d/default.conf

# Copy custom nginx configuration
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy the architecture diagram
COPY architecture_diagram.html /usr/share/nginx/html/
COPY architecture_diagram.html /usr/share/nginx/html/index.html

# Create non-root user for security
RUN addgroup -g 1001 -S appgroup && \
    adduser -u 1001 -S appuser -G appgroup && \
    chown -R appuser:appgroup /usr/share/nginx/html && \
    chown -R appuser:appgroup /var/cache/nginx && \
    chown -R appuser:appgroup /var/log/nginx && \
    touch /var/run/nginx.pid && \
    chown -R appuser:appgroup /var/run/nginx.pid

# Expose port 80
EXPOSE 80

# Health check
HEALTHCHECK --interval=30s --timeout=5s --start-period=10s --retries=3 \
    CMD wget -q --spider http://localhost/health || exit 1

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
