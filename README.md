Politicate Scraper

Example usage using the terminal: `curl http://localhost:80/?url=http://go-colly.org/`

### Getting Started:

To run this project you will need a local kubernetes cluster running. The easiest way to do this is by going through the following steps:

1. Install Docker for Mac 18.05.0 CE – Edge Release [https://docs.docker.com/docker-for-mac/install/]
   - Enable Kubernetes under Preference Pane UI
2. Install the Kuberenetes command line tool, kubectl
   `brew install kubectl`
3. Install kubernetes-helm package manager
   `brew install kubernetes-helm`
4. Make sure Tiller server is downloaded
   `helm init --upgrade`
5. If you haven't already, run a local Docker registry to upload images to
   `docker run -d -p 5000:5000 --restart=always --name registry registry:2`

### Local Development Setup

1. Build the Docker image
   `docker build -t politicate-scraper -f Dockerfile .`
2. Tag the image, and push it to your local registry
   `docker tag politicate-scraper localhost:5000/politicate-scraper:1.0.0`
   `docker push localhost:5000/politicate-scraper:1.0.0`
3. Install the service to your local Kubernetes cluster using Helm
   `helm install --name politicate-scraper ./charts`
4. Follow the instructions printed in the console to open in the browser

### Technology Documentation

- Colly [https://github.com/gocolly/colly]
- Docker [https://docs.docker.com/]
- Kubernetes [https://kubernetes.io/docs/home/]
- Helm [https://github.com/CloudNativeJS/helm]
