# Deploy and Host Cal.com-self-hosted on Railway

Cal.com is the open-source scheduling platform that lets you book meetings without the back-and-forth emails. It connects to Google Calendar, Outlook, and Zoom so your visitors always pick a time that works. You keep full control of your data and branding.

## About Hosting Cal.com-self-hosted

When you self-host Cal.com, you own every booking, every calendar sync, and every piece of customer data. There's no SaaS vendor peeking at your schedule or changing pricing on a whim. Railway makes this straightforward: you get managed Postgres, automatic HTTPS, and zero server configuration. You focus on your appointments, Railway handles the infrastructure.

## Common Use Cases

- **Client booking pages** — Share a branded link and let prospects book calls directly into your calendar.
- **Team scheduling** — Round-robin across sales or support reps so no one gets double-booked.
- **Interview coordination** — Candidates pick slots that respect your panel's combined availability.
- **Paid consultations** — Collect Stripe payments at the point of booking with built-in integrations.
- **Embedded widgets** — Drop a Cal.com iframe into your website so visitors never leave the page.

## Dependencies for Cal.com-self-hosted Hosting

- **PostgreSQL** — Cal.com stores users, events, and bookings in Postgres.
- **SMTP server** — Optional but recommended for confirmation and reminder emails.
- **OAuth credentials** — Google Calendar and Zoom integrations need their respective API keys.

### Deployment Dependencies

- [Cal.com Docker image](https://hub.docker.com/r/calcom/cal.com)
- [Railway PostgreSQL template](https://railway.com/template/postgres)
- [Google Cloud Console](https://console.cloud.google.com/) (for calendar OAuth)

### Implementation Details

This template uses the official `calcom/cal.com:v6.2.0` image. The container runs on port 3000 and connects to a Railway-managed Postgres database via private networking. NextAuth handles authentication, and `NEXT_PUBLIC_WEBAPP_URL` is auto-set to your Railway domain. Run the initial setup wizard on first visit to create your admin account.

## Why Deploy Cal.com-self-hosted on Railway?

Railway is a singular platform to deploy your infrastructure stack. Railway will host your infrastructure so you don't have to deal with configuration, while allowing you to vertically and horizontally scale it.

By deploying Cal.com-self-hosted on Railway, you are one step closer to supporting a complete full-stack application with minimal burden. Host your servers, databases, AI agents, and more on Railway.
