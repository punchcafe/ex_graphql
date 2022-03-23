defmodule ExGraphQL.TypeResolver do

    defmacro __using__(_) do
        @behaviour ExGraphql.TypeResolver
        quote do
            # allow re-defining of model type
            defoverridable type(), do: __MODULE__
            def function_mapping(), do: %{}
        end
    end

    @callback graphql_type() :: string()
    @doc """
    Source type passed to resolvers as the first argument when resolving field.
    """
    @callback type() :: model()

    # generate through use TypeResolver for defaults, allow overriding
    @callback function_mapping() :: map()
end