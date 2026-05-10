FROM calcom/cal.com:v6.2.0

# Railway volumes mount as root — run as root to avoid permission issues
USER root

# Cal.com default port is 3000
ENV PORT=3000
ENV NODE_ENV=production

EXPOSE 3000
