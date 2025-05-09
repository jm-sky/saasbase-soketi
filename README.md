# saasbase-soketi
SaaSBase Soketi configuration for Soketi on Fly.io

This repository sets up a WebSocket server using Soketi on Fly.io.

## Steps to Deploy

1. **Fork this repository** to your GitHub account.
2. Create a **Fly.io account** at [Fly.io](https://fly.io) and create a new app.
3. **Set up your Fly.io secrets** (replace with your actual keys):
   - `PUSHER_APP_KEY`
   - `PUSHER_APP_SECRET`
   - `FLY_API_TOKEN`
4. Push changes to the `main` branch.
5. **GitHub Actions** will automatically deploy to Fly.io.

### Configuration

You can configure the following in `.env`:
- **`PUSHER_APP_KEY`**
- **`PUSHER_APP_SECRET`**

### Access

Once deployed, you can access your Soketi server via the Fly.io URL:  
`https://your-app-name.fly.dev`  
Replace `your-app-name` with the name of your Fly.io app.
