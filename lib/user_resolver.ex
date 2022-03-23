defmodule ExGraphql.User do

    use ExGraphql.TypeResolver

    def resolve_name(source, _args, _dfe) do
        Macro.camelize(source.name)
    end

end