###Instructions
#image build met naam "demo-site-image"
docker build -t demo-site-image .

# Start nieuwe container (poort 81) (-t is hier toch niet nodig? - container draait webserver, terminal dan toch niet nodig? )
docker run -d -p 81:80 --name demo-site-container demo-site-image

echo "Website vindbaar op http://localhost:81/"
