# Closex

[![CircleCI](https://img.shields.io/circleci/project/github/nested-tech/closex.svg)](https://circleci.com/gh/nested-tech/closex/tree/master)
[![Package Version](https://img.shields.io/hexpm/v/closex.svg)](https://hex.pm/packages/closex)

Elixir Close.IO client.

Documentation is available on [HexDocs](https://hexdocs.pm/closex).

## Installation

Add `closex` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:closex, "~> 0.2.0"}
  ]
end
```

## Configuration

In your config.exs:

```elixir
config :closex,
  api_key: "YOUR_API_KEY"
```

You can also read from an environment variable:

```elixir
config :closex,
  api_key: {:system, "MY_ENV_VAR"}
```

## Usage

The client is essentially a wrapper around the Close.IO [REST API](https://developer.close.io/).

It follows the Close.IO API naming conventions as closely as possible. It supports almost everything that the REST API supports including querying leads, opportunities, users, organizations, statuses and more.

Example usage:

```elixir
# Get a lead
Closex.HTTPClient.get_lead("my_lead_id")
{:ok, %{"id" => "my_lead_id", "status_id" => "my_status_id", ...}}

# Update a lead
Closex.HTTPClient.update_lead("my_lead_id", %{status_id: "new_status_id"})
{:ok, %{"id" => "my_lead_id", "status_id" => "new_status_id", ...}}
```

See [the docs](https://hexdocs.pm/closex) for more examples.
