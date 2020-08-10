defimpl Jason.Encoder, for: [Comerier.Tracker.Task.Relation] do
  alias Comerier.Tracker.Task

  def encode(struct, opts) do
    map =
      struct
      |> Map.take(Task.Relation.serializable_fields())
      |> Casex.to_camel_case()

    Jason.Encode.map(map, opts)
  end
end
