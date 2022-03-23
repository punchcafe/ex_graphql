defmodule ExGraphql do

  @doc """
  generate a schema from a .graphqls file (or files), and their corresponsing resolvers
  """
  @spec generate_schema(binary(), [atom()])
  def generate_schema(graphqls_schema_binary, resolvers) do
    #...
    """
    Ensure all types are accounted for.
    If a field has a missing type, ensure it exists as a field on the source type
    """
  end
end
