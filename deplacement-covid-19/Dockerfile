FROM node:alpine AS build
# Install utils and chromium because why not ( postbuild and react-snap )
# See https://github.com/puppeteer/puppeteer/blob/master/docs/troubleshooting.md#running-on-alpine
RUN apk add --update --no-cache chromium g++ git jq make moreutils python3
# Fetch sources
RUN git clone --depth=1 https://github.com/LAB-MI/deplacement-covid-19.git /deplacement-covid-19
# Setup environment
WORKDIR /deplacement-covid-19
ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD true
ENV PUBLIC_URL /
# Yolo patch package.json to run build in docker
RUN cat package.json | jq '.reactSnap.puppeteerExecutablePath="/usr/bin/chromium-browser" | .reactSnap.puppeteerArgs=["--no-sandbox", "--disable-dev-shm-usage"]' | sponge package.json
# Build site
RUN npm install
RUN VERSION=`git rev-parse --short HEAD` npm run build

FROM nginx:alpine
# Set non-built-time labels
LABEL org.opencontainers.image.authors="Ayaz BADOURALY"
LABEL org.opencontainers.image.description="Standalone version of https://media.interieur.gouv.fr/deplacement-covid-19/"
# Retrieve static files from build stage
COPY --from=build /deplacement-covid-19/dist /usr/share/nginx/html
