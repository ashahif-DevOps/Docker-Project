FROM node:22-alpine AS frontend_builder 
WORKDIR /app

COPY package*.json ./
RUN npm install -g @angular/cli
RUN npm ci
COPY . .
RUN npx ng build 


FROM nginx:alpine
COPY --from=frontend_builder /app/dist/shahif-portfolio/browser/  /usr/share/nginx/html   
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]