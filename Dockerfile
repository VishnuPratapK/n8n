FROM n8nio/n8n:latest

ENV NODE_ENV=production
ENV N8N_PORT=8080
ENV N8N_PROTOCOL=https
ENV N8N_ENCRYPTION_KEY=54a29d256aefce660b73928fbecb07ef44ad19ce792459cf
ENV PORT=8080

CMD ["n8n", "start"]
EOF

# Build the image
docker build -t us-central1-docker.pkg.dev/$PROJECT_ID/n8n-repo/n8n:latest .

# Push to Artifact Registry
docker push us-central1-docker.pkg.dev/$PROJECT_ID/n8n-repo/n8n:latest
