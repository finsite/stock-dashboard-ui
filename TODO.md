# TODO – Stock Dashboard UI

This document outlines the development plan for the `stock-dashboard-ui` project. It includes completed setup steps, enhancements, poller integration points, and future theoretical capabilities (such as recommendations based on analysis data).

---

## ✅ Completed Setup

- [x] Project scaffolded with `Next.js 15`, `TypeScript`, `Tailwind CSS`
- [x] Prettier + ESLint with standard and Tailwind plugins
- [x] Stylelint integration with Prettier
- [x] Commitizen + Commitlint + Husky pre-commit hooks
- [x] Turbopack working with live reload
- [x] Initial folder structure (`app/`, `components/`, `styles/`)
- [x] Font setup with `Geist` and `Geist Mono`
- [x] Working favicon with no conflicts

---

## 📈 UI/UX Features to Add

- [ ] Create persistent layout component (navbar, sidebar, theme toggle)
- [ ] Add light/dark theme switching
- [ ] Responsive layout using Tailwind `container` or grid
- [ ] Dashboard cards for:
  - [ ] Price movement
  - [ ] Candlestick patterns
  - [ ] Volume/volatility
  - [ ] Sentiment metrics (news, social, analyst)
- [ ] Charts using `Recharts` or `React ECharts`
- [ ] Add skeleton/loading states for all async data

---

## 🔌 Backend / Poller Integration

Each of these features assumes data is being streamed from RabbitMQ (or optionally pulled from an API).

- [ ] Add API routes (or `getServerSideProps`) to consume data from poller outputs
  - [ ] Candlestick (`stock-tech-candlestick`)
  - [ ] Momentum (MACD, RSI)
  - [ ] Trend (ADX, Parabolic SAR)
  - [ ] Volatility (ATR, Bollinger Bands)
  - [ ] Analyst sentiment (e.g., `stock-sent-analyst`)
  - [ ] News sentiment (e.g., `stock-sent-news`)
  - [ ] Reddit/Twitter sentiment (e.g., `stock-sent-social`)
- [ ] Display poller data in UI:
  - [ ] Tables
  - [ ] Charts
  - [ ] Mini-insights or alerts
- [ ] Include poller update timestamps and health info
- [ ] Add polling retry and fallback handling

---

## 🧠 Theoretical Features (Signal Generation / Recommendations)

While no purchase action will be taken, the system could offer:

- [ ] Sentiment-weighted scoring system (normalized 0–1 scale)
- [ ] Buy/sell/hold signal indicator based on:
  - [ ] Momentum + sentiment convergence
  - [ ] Strong pattern detection (e.g., bullish engulfing + positive news)
- [ ] Scorecards per stock ticker with all metrics
- [ ] Leaderboards for top movers by signal strength
- [ ] Explainable signals (why a recommendation was generated)

---

## ⚙️ Dev Experience Enhancements

- [ ] Add `tsx` or `vitest` for unit/integration testing
- [ ] Add Storybook for UI component development
- [ ] Configure CI/CD with GitHub Actions:
  - [ ] Lint and format checks
  - [ ] Build preview
  - [ ] Optionally auto-deploy to Vercel/Cloudflare
- [ ] Add `.env.local.example` with placeholder variables
- [ ] Add Swagger/OpenAPI if REST endpoints are used

---

## 🗃 Folder Structure Target
