defmodule EctoSQLite3.Schemas.Setting do
  @moduledoc false

  use Ecto.Schema

  import Ecto.Changeset

  schema "settings" do
    field(:properties, :map)
    field(:checksum, :binary)
  end

  def changeset(struct, attrs) do
    cast(struct, attrs, [:properties, :checksum])
  end
end
