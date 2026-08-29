-- Hati Hati demo persistence
-- Run this once in Supabase Dashboard -> SQL Editor.
-- The app uses only the publishable key. Never place a secret key here.
create table if not exists public.trips (
  id text primary key,
  name text not null default 'El Nido escape',
  data jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);

alter table public.trips enable row level security;

create policy "public can read demo trip"
  on public.trips for select to anon using (true);

create policy "public can create demo trip"
  on public.trips for insert to anon with check (true);

create policy "public can update demo trip"
  on public.trips for update to anon using (true) with check (true);

insert into public.trips (id, name, data)
values ('el-nido-demo', 'El Nido escape', '{}'::jsonb)
on conflict (id) do nothing;
