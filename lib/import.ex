defmodule NominaFc.Import do
  alias NominaFc.Players, as: Players

  def import() do
    {:ok, data} = Jason.decode(File.read!("assets/data.json"))
    data["jugadores"]
  end

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

end
