# Use the official n8n Docker image
FROM n8nio/n8n:latest

# Optional: Add any custom nodes or configuration files
# COPY ./custom-nodes /home/node/.n8n/custom-nodes

# Set working directory
WORKDIR /home/node

# Make data directory (for storing workflows etc.)
RUN mkdir -p /home/node/.n8n

# Set correct permissions
RUN chown -R node:node /home/node

# Switch to node user (recommended by n8n)
USER node

# Expose port (must match the PORT env variable on Railway)
EXPOSE 3000

# Start n8n
CMD ["n8n"]
