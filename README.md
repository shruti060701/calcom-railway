# Cal.com on Railway

Cal.com — open-source scheduling infrastructure. Deploy on Railway with one click.

[![Deploy on Railway](https://railway.app/button.svg)](https://railway.app/new/template/CALCOM_TEMPLATE_CODE)

## Features

- **Self-hosted scheduling** — Own your booking data and customer calendar connections.
- **PostgreSQL included** — Managed Postgres database provisioned automatically.
- **Calendar integrations** — Connect Google Calendar, Outlook, Zoom, and more.
- **Payment collection** — Collect Stripe payments at the point of booking.
- **Custom branding** — White-label booking pages with your own domain and logo.

## How to use

1. Click the **Deploy on Railway** button above.
2. Fill in the required environment variables during the template wizard:
   - `NEXT_PUBLIC_WEBSITE_TERMS_URL` — Your terms of service URL.
   - `NEXT_PUBLIC_WEBSITE_PRIVACY_POLICY_URL` — Your privacy policy URL.
3. Wait for the deployment to finish (healthcheck passes on `/`).
4. Open your Railway domain and complete the setup wizard to create your admin account.
5. Connect your calendar under Settings → Calendars and start sharing booking links.

## Environment Variables

| Variable | Description |
|----------|-------------|
| `DATABASE_URL` | Auto-set from Railway Postgres |
| `DATABASE_DIRECT_URL` | Auto-set from Railway Postgres |
| `NEXT_PUBLIC_WEBAPP_URL` | Auto-set to your Railway public domain |
| `NEXTAUTH_URL` | Auto-set to your Railway public domain |
| `NEXTAUTH_SECRET` | Auto-generated secret for authentication |
| `CALENDSO_ENCRYPTION_KEY` | Auto-generated secret for data encryption |
| `NEXT_PUBLIC_WEBSITE_TERMS_URL` | Your terms of service page |
| `NEXT_PUBLIC_WEBSITE_PRIVACY_POLICY_URL` | Your privacy policy page |

## Notes

- This template uses the official `calcom/cal.com:v6.2.0` Docker image.
- The container runs on port `3000` and connects to Postgres via private networking.
- Prisma migrations run automatically on startup.
- For email delivery, configure `EMAIL_SERVER_HOST`, `EMAIL_SERVER_PORT`, `EMAIL_SERVER_USER`, and `EMAIL_SERVER_PASSWORD` after deployment.
