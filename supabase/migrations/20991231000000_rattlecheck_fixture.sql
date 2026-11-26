create table public.rattlecheck_fixture_directory (
  id integer primary key,
  display_name text not null,
  private_email text not null
);
alter table public.rattlecheck_fixture_directory enable row level security;
create policy browse on public.rattlecheck_fixture_directory for select to anon using (true);
grant select on public.rattlecheck_fixture_directory to anon;
revoke select on public.rattlecheck_fixture_directory from public, anon;
grant select (id, display_name) on public.rattlecheck_fixture_directory to anon;
