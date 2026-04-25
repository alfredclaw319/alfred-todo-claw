# TodoApp

A small Phoenix LiveView todo app backed by SQLite.

## Features

- Create, edit, delete todos
- Mark tasks complete / reopen them inline
- Optional notes
- SQLite persistence for simple local/dev hosting

## Requirements

- Elixir 1.17.x
- Erlang/OTP 25+

In this sandbox I installed a local toolchain under `../.local`, so commands were run with:

```bash
export PATH=/home/lparry/.openclaw/workspace/.local/bin:/home/lparry/.openclaw/workspace/.local/otp-root/usr/bin:$PATH
export MIX_HOME=/home/lparry/.openclaw/workspace/.mix17
export HEX_HOME=/home/lparry/.openclaw/workspace/.hex
```

On a normal machine with Elixir installed, you should not need those exports.

## Run locally

```bash
mix setup
mix phx.server
```

Then open <http://localhost:4000>.

## Useful commands

```bash
mix test
mix format
mix assets.build
mix ecto.migrate
```

## Deployment note

This app currently uses SQLite. That keeps it simple for local use and cheap hosting, but production hosting needs either:

- a persistent disk/volume for the SQLite database, or
- swapping to Postgres before deploy.
