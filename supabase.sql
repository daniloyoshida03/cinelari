-- Execute no SQL Editor de um projeto Supabase dedicado ao CineLari.
create table if not exists public.movies (
  id uuid primary key,
  title text not null check (char_length(title) between 1 and 100),
  year integer check (year between 1888 and 2100),
  genre text not null default 'Outro',
  who text not null default 'Nós dois',
  status text not null default 'pendente' check (status in ('pendente','assistido')),
  favorite boolean not null default false,
  danilo integer check (danilo between 1 and 5),
  lari integer check (lari between 1 and 5),
  created_at timestamptz not null default now()
);
alter table public.movies enable row level security;
-- Lista intencionalmente pública: qualquer visitante pode ver, adicionar, editar e excluir.
-- Execute também em projetos existentes para adicionar cartaz e sinopse:
alter table public.movies add column if not exists overview text;
alter table public.movies add column if not exists poster_url text;
-- Recriar políticas de forma segura caso já existam:
drop policy if exists "Public read CineLari" on public.movies;
drop policy if exists "Public insert CineLari" on public.movies;
drop policy if exists "Public update CineLari" on public.movies;
drop policy if exists "Public delete CineLari" on public.movies;
create policy "Public read CineLari" on public.movies for select to anon using (true);
create policy "Public insert CineLari" on public.movies for insert to anon with check (true);
create policy "Public update CineLari" on public.movies for update to anon using (true) with check (true);
create policy "Public delete CineLari" on public.movies for delete to anon using (true);
