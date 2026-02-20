<div align="center">

# 🔄 RepoSync — Architecture Diagram

[![Live Demo](https://img.shields.io/badge/🌐_Live_Demo-Netlify-00C7B7?style=for-the-badge&logo=netlify&logoColor=white)](https://repo-sync-architecture.netlify.app/)
[![Docker](https://img.shields.io/badge/Docker-Hub-2496ED?style=for-the-badge&logo=docker&logoColor=white)](https://hub.docker.com/)
[![GitHub Actions](https://img.shields.io/github/actions/workflow/status/nadeeshame/RepoSync-Architecture/ci.yml?style=for-the-badge&logo=github-actions&logoColor=white&label=CI/CD)](https://github.com/nadeeshame/RepoSync-Architecture/actions)
[![License](https://img.shields.io/badge/License-MIT-yellow?style=for-the-badge)](LICENSE)
[![CodeQL](https://img.shields.io/badge/CodeQL-Enabled-green?style=for-the-badge&logo=github&logoColor=white)](https://github.com/nadeeshame/RepoSync-Architecture/security/code-scanning)

<br/>

<img src="https://img.shields.io/badge/HTML5-E34F26?style=flat-square&logo=html5&logoColor=white" alt="HTML5"/>
<img src="https://img.shields.io/badge/CSS3-1572B6?style=flat-square&logo=css3&logoColor=white" alt="CSS3"/>
<img src="https://img.shields.io/badge/Docker-2496ED?style=flat-square&logo=docker&logoColor=white" alt="Docker"/>
<img src="https://img.shields.io/badge/Nginx-009639?style=flat-square&logo=nginx&logoColor=white" alt="Nginx"/>
<img src="https://img.shields.io/badge/GitHub_Actions-2088FF?style=flat-square&logo=github-actions&logoColor=white" alt="GitHub Actions"/>

<br/><br/>

**Professional interactive architecture diagram for RepoSync — an Automated RAG Knowledge Base Updater built with SOLID principles & Dependency Injection.**

[🌐 **Live Demo**](https://repo-sync-architecture.netlify.app/) · [🐛 Report Bug](../../issues) · [✨ Request Feature](../../issues)

</div>

---

## 📋 Table of Contents

- [About](#-about)
- [Live Demo](#-live-demo)
- [Architecture Overview](#-architecture-overview)
- [Features](#-features)
- [Getting Started](#-getting-started)
- [Docker](#-docker)
- [CI/CD Pipeline](#-cicd-pipeline)
- [Project Structure](#-project-structure)
- [Contributing](#-contributing)
- [License](#-license)

---

## 🔍 About

This project provides a **professional, interactive architecture diagram** for the RepoSync system — an enterprise-grade automated pipeline that synchronizes GitHub repositories with vector databases for RAG (Retrieval-Augmented Generation) knowledge bases.

The diagram visualizes:

- 🏗️ **High-Level Layered Architecture** — Trigger, API, Config, Core, Processor, Infrastructure, and External layers
- 🔄 **Data Flow Pipeline** — 8-step update pipeline from Discovery to Notification
- 🧩 **Interface → Implementation Mapping** — Dependency Inversion with 9 abstract interfaces
- 📐 **SOLID Principles** — How each principle is applied in the architecture
- 🚀 **Deployment Options** — GitHub Actions, Google Cloud Run, Choreo/PaaS, Self-Hosted
- 📁 **Project Directory Structure** — Complete file tree with annotations

---

## 🌐 Live Demo

> **🔗 [https://repo-sync-architecture.netlify.app/](https://repo-sync-architecture.netlify.app/)**

The architecture diagram is deployed on **Netlify** and is fully interactive with hover effects, animations, and responsive design.

---

## 🏛️ Architecture Overview

```
┌─────────────────────────────────────────────────┐
│              Scheduling & Triggers               │
│   GitHub Actions │ Cloud Scheduler │ APScheduler │
└──────────────────────┬──────────────────────────┘
                       ▼
         ┌─────────────┴─────────────┐
         │   API Layer    │  Config   │
         │  Flask REST    │ Pydantic  │
         └─────────┬──────┴──────────┘
                   ▼
         ┌─────────────────┐
         │  DI Container   │
         │  IoC Wiring     │
         └────────┬────────┘
                  ▼
         ┌─────────────────┐
         │   Core Domain   │
         │ Models │ ABCs   │
         └────────┬────────┘
                  ▼
    ┌─────────────┴─────────────┐
    │  Processor   │  Infra     │
    │  Business    │  External  │
    │  Logic       │  Adapters  │
    └──────┬───────┴─────┬──────┘
           ▼             ▼
    ┌─────────────────────────┐
    │   External Services     │
    │ GitHub │ Azure │ Milvus │
    └─────────────────────────┘
```

---

## ✨ Features

| Feature | Description |
|---------|-------------|
| 🎨 **Modern Dark UI** | Sleek dark theme with gradient accents and glass-morphism effects |
| 📱 **Fully Responsive** | Optimized for desktop, tablet, and mobile viewports |
| ✨ **Interactive Elements** | Hover animations, pulse effects, and smooth transitions |
| 🏗️ **Layered Architecture** | Visual representation of all system layers |
| 🔄 **Data Flow Visualization** | Step-by-step pipeline with numbered stages |
| 📐 **SOLID Principles** | Detailed breakdown of design principles applied |
| 🧩 **Interface Mapping** | Complete interface-to-implementation mapping |
| 🚀 **Deployment Options** | Comparison of 4 deployment strategies |
| 📁 **Directory Tree** | Annotated project structure |
| ⚡ **Zero Dependencies** | Pure HTML + CSS, no JavaScript frameworks required |

---

## 🚀 Getting Started

### Prerequisites

- A modern web browser (Chrome, Firefox, Safari, Edge)
- (Optional) [Docker](https://www.docker.com/) for containerized deployment

### Quick Start

1. **Clone the repository**
   ```bash
   git clone https://github.com/nadeeshame/RepoSync-Architecture.git
   cd RepoSync-Architecture
   ```

2. **Open directly in browser**
   ```bash
   open architecture_diagram.html
   # or on Linux
   xdg-open architecture_diagram.html
   ```

3. **Or serve with a local server**
   ```bash
   # Using Python
   python3 -m http.server 8080
   
   # Using Node.js
   npx serve .
   ```

4. **Visit** `http://localhost:8080`

---

## 🐳 Docker

### Build & Run Locally

```bash
# Build the Docker image
docker build -t reposync-architecture .

# Run the container
docker run -d -p 8080:80 --name reposync-arch reposync-architecture

# Visit http://localhost:8080
```

### Pull from Docker Hub

```bash
docker pull nadeeshame/reposync-architecture:latest
docker run -d -p 8080:80 nadeeshame/reposync-architecture:latest
```

### Docker Compose

```yaml
version: '3.8'
services:
  reposync-architecture:
    image: nadeeshame/reposync-architecture:latest
    ports:
      - "8080:80"
    restart: unless-stopped
```

---

## 🔧 CI/CD Pipeline

This project uses **GitHub Actions** for a comprehensive CI/CD pipeline:

| Workflow | Description | Trigger |
|----------|-------------|---------|
| **CI** | Lint, validate HTML, build & test Docker image | Push, PR to `main` |
| **CodeQL** | Security vulnerability analysis | Push, PR, scheduled |
| **Docker Build & Push** | Build and push to Docker Hub | Push to `main`, releases |
| **Release Management** | Automated semantic versioning & changelog | Push to `main` |
| **Publish to GitHub Packages** | Publish Docker image to GHCR | Releases |
| **Dependabot** | Automated dependency updates | Scheduled |
| **Dependency Updates** | Review and auto-merge dependency PRs | Dependabot PRs |

### Required Secrets

| Secret | Description |
|--------|-------------|
| `DOCKERHUB_USERNAME` | Docker Hub username |
| `DOCKERHUB_TOKEN` | Docker Hub access token |

---

## 📁 Project Structure

```
RepoSync-Architecture/
├── architecture_diagram.html    # Main architecture diagram (single-page)
├── Dockerfile                   # Multi-stage Docker build with Nginx
├── .dockerignore                # Docker build exclusions
├── README.md                    # Project documentation
├── LICENSE                      # MIT License
├── action.yml                   # GitHub Marketplace action definition
├── .github/
│   ├── dependabot.yml           # Dependabot configuration
│   └── workflows/
│       ├── ci.yml               # CI pipeline
│       ├── codeql.yml           # CodeQL security analysis
│       ├── docker.yml           # Docker build, test & push
│       ├── release.yml          # Release management
│       ├── publish.yml          # Publish to GitHub Packages
│       └── dependency-updates.yml # Auto-merge dependency updates
└── nginx.conf                   # Nginx configuration for Docker
```

---

## 🤝 Contributing

Contributions are welcome! Here's how you can help:

1. **Fork** the repository
2. **Create** a feature branch (`git checkout -b feature/amazing-feature`)
3. **Commit** your changes (`git commit -m 'feat: add amazing feature'`)
4. **Push** to the branch (`git push origin feature/amazing-feature`)
5. **Open** a Pull Request

Please make sure your PR passes all CI checks before requesting a review.

---

## 📄 License

This project is licensed under the **MIT License** — see the [LICENSE](LICENSE) file for details.

---

<div align="center">

**Built with ❤️ for automated knowledge management**

<br/>

<img src="https://img.shields.io/badge/Maintained-Yes-green?style=flat-square" alt="Maintained"/>
<img src="https://img.shields.io/badge/Made_with-HTML_&_CSS-blue?style=flat-square" alt="Made with HTML & CSS"/>
<img src="https://img.shields.io/badge/Deployed_on-Netlify-00C7B7?style=flat-square&logo=netlify" alt="Netlify"/>

</div>
