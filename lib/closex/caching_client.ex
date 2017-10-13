defmodule Closex.CachingClient do
  @behaviour Closex.ClientBehaviour
  @fallback_client Application.get_env(:closex, :fallback_client, Closex.HTTPClient)

  defdelegate find_leads(search_term, opts \\ []), to: @fallback_client
  defdelegate get_lead(lead_id, opts \\ []), to: @fallback_client
  defdelegate create_lead(payload, opts \\ []), to: @fallback_client
  defdelegate update_lead(lead_id, payload, opts \\ []), to: @fallback_client
  defdelegate get_opportunity(opportunity_id, opts \\ []), to: @fallback_client
  defdelegate create_opportunity(payload, opts \\ []), to: @fallback_client
  defdelegate update_opportunity(opportunity_id, payload, opts \\ []), to: @fallback_client
  defdelegate get_lead_custom_field(custom_field_id, opts \\ []), to: @fallback_client
  defdelegate get_organization(organization_id, opts \\ []), to: @fallback_client
  defdelegate get_lead_statuses(opts \\ []), to: @fallback_client
  defdelegate get_opportunity_statuses(opts \\ []), to: @fallback_client
  defdelegate send_email(payload, opts \\ []), to: @fallback_client
  defdelegate get_users(opts \\ []), to: @fallback_client
end