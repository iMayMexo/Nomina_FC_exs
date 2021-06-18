defmodule NominaFc do
  defmodule Players do
    defstruct [:nombre, :nivel, :goles, :sueldo, :bono, :sueldo_completo, :equipo]
  end

  defmodule Rules do
    defstruct [:nivel, :bono]
  end
end
