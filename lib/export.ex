defmodule NominaFc.Export do
  alias NominaFc.Players, as: Players

  defp to_map(%Players{
    nombre:           n,
    nivel:            l,
    goles:            g,
    sueldo:           s,
    bono:             b,
    sueldo_completo:  sc,
    equipo:           t
    }) do
      %{
        "nombre"          => n,
        "nivel"           => l,
        "goles"           => g,
        "sueldo"          => s,
        "bono"            => b,
        "sueldo_completo" => sc,
        "equipo"          => t
      }
    end

    defp to_map(_e) do
      nil
    end

    defp to_json(r) do
      {:ok,json_version} = Jason.encode(r)
      json_version
    end

    defp response(data) do
      File.write("dumps/response.json",data)
    end

    def export(players) do
      players
      |> Enum.map(&to_map/1)
      |> Enum.map(fn
        nil -> false
        _ -> true
      end)
      |> to_json
      |> response
    end
end
