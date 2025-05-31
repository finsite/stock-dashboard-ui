# === Base Build Stage ===
FROM node:20-alpine AS builder

WORKDIR /app

# Install dependencies
COPY package.json package-lock.json* pnpm-lock.yaml* ./
RUN npm install

# Copy source code
COPY . .

# Build the application
RUN npm run build

# === Production Stage ===
FROM node:20-alpine AS runner

WORKDIR /app

# Only copy necessary files for production
COPY --from=builder /app/public ./public
COPY --from=builder /app/.next ./.next
COPY --from=builder /app/node_modules ./node_modules
COPY --from=builder /app/package.json ./package.json
COPY --from=builder /app/next.config.js ./next.config.js

ENV NODE_ENV=production
EXPOSE 3000

CMD ["npm", "start"]
