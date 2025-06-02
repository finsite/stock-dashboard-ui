# 📊 stock-dashboard-ui

[![Build](https://img.shields.io/github/actions/workflow/status/markq/stock-dashboard-ui/build.yml?branch=main)](https://github.com/markq/stock-dashboard-ui/actions/workflows/build.yml)
[![Lint](https://img.shields.io/github/actions/workflow/status/markq/stock-dashboard-ui/lint.yml?branch=main)](https://github.com/markq/stock-dashboard-ui/actions/workflows/lint.yml)
[![Tests](https://img.shields.io/github/actions/workflow/status/markq/stock-dashboard-ui/test.yml?branch=main)](https://github.com/markq/stock-dashboard-ui/actions/workflows/test.yml)
[![Release](https://img.shields.io/github/v/release/markq/stock-dashboard-ui)](https://github.com/markq/stock-dashboard-ui/releases)
[![License](https://img.shields.io/github/license/markq/stock-dashboard-ui)](./LICENSE)

---

## 📦 Overview

**stock-dashboard-ui** is a modern, high-performance web frontend built with:

- ⚛️ React 19
- 🚀 Next.js 15
- 🎨 Tailwind CSS
- ✨ TypeScript-first architecture
- 🐳 Dockerized and CI-integrated

This UI is part of a broader stock analysis and visualization platform.

---

## 🛠️ Local Development

```bash
# Install dependencies
npm install

# Run the dev server
npm run dev

# Lint and fix
npm run lint:fix

# Format code
npm run format

# Type check
npm run type-check

# Build for production
npm run build
```

---

## 🧪 Testing

```bash
# Run unit tests (if implemented)
npm test
```

---

## 🚀 Release Workflow

This project uses **Commitizen + standard-version** to manage releases.

```bash
# Bump version & changelog manually
make release
```

This will:

- Generate/update CHANGELOG.md
- Bump the version in package.json
- Push the tag and changes to GitHub

Automatic releases also occur via GitHub Actions when pushing to `main`.

---

## 🐳 Docker Support

Build a production-ready Docker image:

```bash
docker build -t stock-dashboard-ui .
```

Images are published to:

```
ghcr.io/markq/stock-dashboard-ui
```

---

## 📜 License

This project is licensed under the [MIT License](./LICENSE).

---

## 🙋‍♂️ Maintainer

**Mark Quinn**
[https://github.com/markq](https://github.com/markq)

```

---

Let me know if you'd like this exported as a file or saved into your repo structure.
```
