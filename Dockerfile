FROM node:24-alpine AS builder
WORKDIR /app
COPY . .
RUN npm install --omit=dev

FROM node:24-alpine
WORKDIR /app
COPY --from=builder /app .
RUN addgroup -S appgroup && adduser -S appuser -G appgroup
RUN mkdir -p /etc/todos && chown -R appuser:appgroup /etc/todos
USER appuser
CMD ["node", "src/index.js"]
EXPOSE 3000