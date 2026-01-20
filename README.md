# Paper GitOps Lab

A wrapper repo for deploying PaperMC to Kubernetes using ArgoCD.

## Structure

- `Dockerfile` — Builds the Paper server image
- `k8s/` — Kubernetes manifests
- `argocd/` — ArgoCD Application definition
- `.github/workflows/` — CI pipeline for building and pushing images

## Prerequisites

- Docker
- kubectl access to a cluster
- ArgoCD installed on the cluster

## Setup

1. Fork this repo to your own GitHub account
2. In your fork, go to **Settings -> Actions -> General**
3. Under "Workflow permissions", select **Read and write permissions**
4. Click **Save**
5. Push a commit to `main`

The workflow will build the Docker image and push it to your own GitHub Container Registry at `ghcr.io/<your-username>/msud-paper-gitops-lab`.

When writing your Kubernetes manifests, use your image path. Do not use the upstream repo's path.

## Local Development

You can build the image locally with Docker or Podman:

```zsh
docker build -t paper-server .
# or
podman build -t paper-server .
```

Both produce OCI-compliant images. The CI pipeline uses Docker, but the artifacts are identical.

## License

[MIT](LICENSE)