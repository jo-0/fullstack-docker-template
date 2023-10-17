FROM node AS frontend-dependencies
WORKDIR /frontend
COPY ./frontend/package*.json /frontend/
RUN npm ci
COPY ./frontend /frontend

FROM frontend-dependencies AS frontend-build
ARG mode=production
WORKDIR /frontend
# RUN npm run build -- --mode $mode
RUN npm run build-only



FROM nginx AS production
COPY --from=frontend-build /frontend/dist /etc/nginx/html
COPY ./nginx/nginx.conf /etc/nginx/conf.d
