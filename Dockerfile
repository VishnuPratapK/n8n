cat > Dockerfile << 'EOF'
FROM n8nio/n8n:latest

# Copy a custom start script
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Environment variables
ENV NODE_ENV=production
ENV N8N_PORT=8080
ENV N8N_PROTOCOL=https
ENV N8N_ENCRYPTION_KEY=54a29d256aefce660b73928fbecb07ef44ad19ce792459cf
ENV PORT=8080

# Use our custom start script
CMD ["/start.sh"]
EOF
