# dotfiles

Repo for config dotfiles

## Services

### Immich
Self-hosted photo and video backup solution.

- **Image**: `ghcr.io/immich-app/immich-server:release`
- **Port**: 2283
- **Requires**: PostgreSQL, Redis, Valkey

**Setup:**
1. Copy `.env.template` to `.env`
2. Update `DB_PASSWORD` with a secure password
3. Set `UPLOAD_LOCATION` to your preferred storage path
4. Run: `docker compose up -d`

### Tailscale
VPN for secure access to services.

- **Image**: `tailscale/tailscale:latest`
- **Port**: 8080 (nginx proxy)

**Setup:**
1. Copy `.env.template` to `.env`
2. Generate an auth key at https://login.tailscale.com/admin/settings/keys
3. Add the key to `TS_AUTHKEY`
4. Set `TS_HOSTNAME` to your preferred machine name
5. Run: `docker compose up -d`

**Access via Tailscale:**
- Immich: `http://immich-server:2283`
- Fizzy: `http://immich-server:3000`

### Fizzy
Self-hosted project management by Basecamp.

- **Image**: `ghcr.io/basecamp/fizzy:main`
- **Port**: 3000 (HTTP), 3443 (HTTPS)

**Setup:**
1. Copy `.env.template` to `.env`
2. Generate required keys:
   - `SECRET_KEY_BASE`: `openssl rand -hex 64`
   - VAPID keys: Generate via web push library
3. Configure SMTP settings for email
4. Run: `docker compose up -d`

## Quick Start

```bash
# Clone the repo
git clone https://github.com/yourusername/dotfiles.git
cd dotfiles

# Set up each service
for service in immich tailscale fizzy; do
  cp $service/.env.template $service/.env
  # Edit the .env file with your values
done

# Start all services
docker compose up -d
```

## Directory Structure

```
.
├── docker-compose.yml      # Main compose file (includes all services)
├── immich/
│   ├── docker-compose.yml
│   ├── .env.template
│   └── .env               # Gitignored
├── tailscale/
│   ├── docker-compose.yml
│   ├── nginx.conf
│   ├── .env.template
│   └── .env               # Gitignored
├── fizzy/
│   ├── docker-compose.yml
│   ├── .env.template
│   └── .env               # Gitignored
├── systemd/               # Systemd service files
├── fish/                  # Fish shell config
├── ghostty/               # Ghostty terminal config
└── hypr/                  # Hyprland config
```

## Environment Files

All `.env` files are gitignored. Use `.env.template` files as reference for required variables.
