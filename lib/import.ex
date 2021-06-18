defmodule NominaFc.Import do

  def import() do
    Jason.decode(File.read!("assets/data.json"))
    {:ok, Enum.into([{"result", "this will be an Elixir result"}], Map.new)}
  end

end
