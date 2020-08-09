defimpl Jason.Encoder, for: [Comerier.Tracker.Client.Relation] do
  alias Comerier.Tracker.Client

  def encode(struct, opts) do
    map =
      struct
      |> Map.take(Client.Relation.serializable_fields())
      |> Casex.to_camel_case()

    Jason.Encode.map(map, opts)
  end
end
