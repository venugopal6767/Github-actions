#!/bin/bash
set -e

echo "Installing Trivy..."

TRIVY_VERSION="0.51.1"

wget -q https://github.com/aquasecurity/trivy/releases/latest/download/trivy_${TRIVY_VERSION}_Linux-64bit.deb
sudo dpkg -i trivy_${TRIVY_VERSION}_Linux-64bit.deb

echo "✅ Trivy installed"
