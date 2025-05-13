###Instructions
#image build met naam "demo-site-image"
docker build -t demo-site-image .

#moest de container al bestaan, wordt de vorige container eerst verwijderd:
docker rm -f demo-site-container 2>/dev/null || true

# Start nieuwe container (poort 81)
docker run -dt -p 81:80 --name demo-site-container demo-site-image

echo "Website vindbaar op http://localhost:81/"
