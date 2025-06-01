import type { NextConfig } from 'next';

const nextConfig: NextConfig = {
  reactStrictMode: true,
  swcMinify: true,
  experimental: {
    typedRoutes: true, // Enable typed routes if you're using TypeScript route helpers
  },
  images: {
    domains: [], // Add trusted domains for `next/image` if needed
  },
};

export default nextConfig;
