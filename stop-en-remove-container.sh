# Container running? Stop en verwijder:
docker stop demo-site-container 2>/dev/null || true
docker rm demo-site-container 2>/dev/null || true

echo "Container demo-site-container is gestopt en bijgevolg ook verwijderd."

