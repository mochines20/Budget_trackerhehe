# Saan Punta? Budget Tracker

A lightweight, responsive tropa trip-budget tracker built as a static app for Vercel.

## Run locally

Open `index.html`, or serve the folder with any static server. The app also works with local browser storage when Supabase is unavailable.

## Supabase setup

1. Open the Supabase SQL Editor.
2. Run [`supabase-schema.sql`](./supabase-schema.sql).
3. Reload the app. The sync indicator should change from `Local only` to `Synced`.

The frontend uses only the Supabase publishable key. Do not add a secret key, database password, or `.env` file to this repository. The included RLS policies are intentionally simple for this demo; add Supabase Auth and per-trip policies before using it with private production data.

## Vercel

Import the GitHub repository as a project. No build command or output directory is required; Vercel can deploy the repository as a static site.
