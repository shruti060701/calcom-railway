## Template Titles

**Railway Title:** `Cal.com [Updated May '26]`
**Railway Description:** `Cal.com [May '26] (Open-Source Scheduling & Appointment Booking) Self Host`
**Spreadsheet Title:** `Cal.com (Open-Source Scheduling Platform & Appointment Booking Tool)`
**GitHub Description:** `Cal.com — open-source scheduling infrastructure. Deploy on Railway with one click.`

---

![Cal.com banner showing calendar scheduling interface](https://res.cloudinary.com/dt8h4kuxe/image/upload/v1746790800/calcom-banner.png "Hosting Cal.com on Railway")

# Deploy and Host self hosted Cal.com (Open-Source Scheduling Platform) on Railway

Cal.com is the open-source scheduling infrastructure that replaces Calendly and Microsoft Bookings. It connects to Google Calendar, Outlook, Zoom, and Stripe so your clients book time that actually works for you. You control branding, data, and pricing without a SaaS vendor in the middle. Built on Next.js with Prisma, it handles timezone math, round-robin assignment, and payment collection in one clean package.

## About Hosting Cal.com open-source software on Railway (self hosted Cal.com template)

Self-hosting Cal.com means your appointment data stays on your own Postgres database, not in a third-party cloud. Railway removes the server management burden by providing managed PostgreSQL, automatic HTTPS, and zero-config networking. You get the privacy of self-hosting with the convenience of a modern platform. Your booking history, customer emails, and calendar tokens never leave infrastructure you control.

## Why Deploy Cal.com, the Calendly alternative on Railway (Railway Free Trial)

Calendly Business costs $12 per user per month. For a 5-person team, that's $720 a year just for scheduling. Cal.com is free to self-host, and Railway's $5 free trial gets you started with no upfront cost. You keep the money and the data.

### Railway vs Other Hosting Providers and VPS for Cal.com self hosting

| Provider          | What You Get with Railway                              | What You Get with the Other Provider              |
| ----------------- | ------------------------------------------------------ | -------------------------------------------------- |
| **DigitalOcean**  | Managed Postgres, auto HTTPS, private networking       | Raw VMs you configure and secure yourself          |
| **AWS**           | Simple per-usage billing, no complex IAM setup          | Overwhelming console, surprise egress fees         |
| **Hetzner**       | One-click deploy, automatic domains, zero maintenance   | Cheap hardware but you manage OS, backups, SSL   |

## Common Use Cases for hosted Cal.com

- **Sales demo booking** — Share a branded link and let prospects book directly into your reps' calendars.
- **Support call scheduling** — Customers pick a time that respects your team's availability and timezone.
- **Paid consultation sessions** — Collect Stripe payments at the point of booking with native payment integrations.
- **Interview coordination** — Candidates see combined availability across your entire hiring panel.
- **Embedded website widgets** — Drop a Cal.com booking iframe into any page so visitors never leave your site.

![Cal.com feature screenshot showing booking page customization](https://res.cloudinary.com/dt8h4kuxe/image/upload/v1746790801/calcom-features.png "Cal.com booking page customization")

## Dependencies for Cal.com Docker hosted on Railway

Cal.com ships as a Next.js application with a Prisma ORM layer. You need PostgreSQL for data persistence and optional SMTP for email delivery. Google Calendar or Zoom integrations require OAuth credentials from their respective developer consoles. Railway handles TLS termination and domain management, so you don't need a reverse proxy or certbot setup.

### Deployment Dependencies for Managed Cal.com Service (OSS Scheduling)

This template provisions a Railway-managed PostgreSQL database alongside the Cal.com container. Postgres stores users, event types, bookings, and webhook configurations. No Redis or Elasticsearch is required for standard scheduling workloads. The two services communicate over Railway's internal network, so database traffic never touches the public internet.

### Implementation Details for Cal.com (Using Cal.com official docker image)

The template deploys `calcom/cal.com:v6.2.0` on port 3000. Railway's private DNS connects the app to Postgres at `postgres.railway.internal:5432`. Prisma migrations run automatically on startup. `NEXT_PUBLIC_WEBAPP_URL` and `NEXTAUTH_URL` point to your generated Railway domain. Visit the setup wizard on first launch to create your admin account.

## How does Cal.com compare against other scheduling platforms

### Cal.com vs Calendly (Calendly Alternative)
* **Data ownership:** Cal.com stores everything on your own Postgres instance; Calendly hosts data on its servers.
* **Pricing transparency:** Cal.com is free to self-host; Calendly charges per user per month with feature tiers.
* **Custom branding:** Cal.com lets you fully white-label booking pages without enterprise contracts.

### Cal.com vs Microsoft Bookings (Microsoft Bookings Alternative)
* **Platform independence:** Cal.com works with any email provider; Bookings ties you to Microsoft 365.
* **Integrations:** Cal.com connects to Zoom, Stripe, and 20+ apps natively; Bookings has limited third-party support.
* **Open-source flexibility:** You can fork Cal.com and modify booking logic; Bookings is closed source.

### Cal.com vs SavvyCal (SavvyCal Alternative)
* **Self-hosting option:** Cal.com can run on your own infrastructure; SavvyCal is SaaS-only.
* **Payment collection:** Both support Stripe, but Cal.com lets you keep 100% of revenue without platform fees.
* **Developer ecosystem:** Cal.com has a public API and webhooks that developers already build against.

### Cal.com vs Zoho Bookings (Zoho Bookings Alternative)
* **Ease of setup:** Cal.com deploys in one click on Railway; Zoho requires account configuration across multiple products.
* **Modern stack:** Cal.com is Next.js with Prisma; Zoho runs on older infrastructure with slower UI updates.
* **Community support:** Cal.com has 30,000+ GitHub stars and active Discord help; Zoho relies on ticket-based support.

## How to use Cal.com (the OSS Scheduling Platform)?

Deploy the template, wait for the healthcheck to pass, open your Railway domain, and run the setup wizard to create your first admin user. Connect your Google or Outlook calendar under Settings → Calendars, then create an event type and copy the public booking link to share with clients.

## How to self host Cal.com on other VPS Services (Cal.com self hosting guide)

### Clone the Repository
Clone `https://github.com/calcom/cal.com` or pull the official Docker image from Docker Hub.

### Install Dependencies
Ensure Docker and Docker Compose are installed. Cal.com needs Node.js 20+ if building from source.

### Configure Environment Variables
Copy `.env.example` to `.env` and set `DATABASE_URL`, `NEXTAUTH_SECRET`, `NEXTAUTH_URL`, and `CALENDSO_ENCRYPTION_KEY`.

### Start the Cal.com Application
Run `docker compose up -d` to start the app, Postgres, and optional mail services together.

## Official Pricing of Cal.com (Cal.com pricing)

Cal.com is released under the AGPL-3.0 license. The core scheduling engine is free to self-host forever. Cal.com also offers a managed cloud tier starting at free for individuals, with team and enterprise plans that add SAML, analytics, and premium support. Self-hosting via Railway avoids all per-user SaaS fees.

## Cal.com cloud vs self hosted comparison (Pricing, features, costs, and more)

The cloud version handles backups and updates for you, but costs scale with every team member. Self-hosting on Railway gives you identical features at a predictable infrastructure cost, plus the ability to customize code and keep data in your own database.

### Monthly cost of self hosting Cal.com on Railway

A typical Cal.com deployment on Railway costs between $5 and $15 per month. This covers the Cal.com container and the managed Postgres database. Usage scales with booking volume, but most small teams stay well under $20 monthly. There's no per-user pricing, so adding teammates doesn't increase your bill.

### System Requirements for Hosting Cal.com on a VPS

Minimum: 1 vCPU, 2 GB RAM, 20 GB SSD. Cal.com runs comfortably on modest hardware because the heavy lifting is handled by Postgres and Next.js runtime. Docker is required. For production, allocate 4 GB RAM and enable automated backups. Railway's managed Postgres includes daily snapshots and point-in-time recovery, which removes the need for manual backup scripts.

## Frequently Asked Questions (FAQs)

### What is Cal.com self hosted?
Cal.com self-hosted is the open-source scheduling platform running on your own infrastructure. You control the database, domain, and all booking data instead of relying on a SaaS provider.

### How much does Cal.com self hosting cost on Railway?
Expect $5 to $15 per month for a standard deployment. Railway bills by resource usage, not per user, so your cost stays flat as your team grows. Small businesses get predictable bills.

### Is Cal.com free to use?
Yes. The core platform is AGPL-3.0 open source and free to self-host. You only pay for the infrastructure you consume on Railway.

### What calendar integrations does Cal.com support?
Cal.com connects to Google Calendar, Outlook, Apple iCloud, Zoom, Microsoft Teams, and 20+ other platforms through built-in app store integrations.

### Where can I download Cal.com?
Download the source code from the official GitHub repository at `github.com/calcom/cal.com` or pull the verified Docker image `calcom/cal.com` from Docker Hub.

### What are some alternatives to Cal.com?
Popular alternatives include Calendly, Microsoft Bookings, SavvyCal, and Zoho Bookings. None of them offer the same level of data control and open-source flexibility that Cal.com provides.
