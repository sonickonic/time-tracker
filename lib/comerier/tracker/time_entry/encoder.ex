defimpl Jason.Encoder, for: [Comerier.Tracker.TimeEntry.Relation] do
  alias Comerier.Tracker.TimeEntry

  def encode(struct, opts) do
    map =
      struct
      |> Map.take(TimeEntry.Relation.serializable_fields())
      |> Casex.to_camel_case()

    Jason.Encode.map(map, opts)
  end
end
