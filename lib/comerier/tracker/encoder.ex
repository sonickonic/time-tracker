defimpl Jason.Encoder,
  for: [
    Comerier.Tracker.TimeEntry.Relation,
    Comerier.Tracker.Task.Relation,
    Comerier.Tracker.Project.Relation,
    Comerier.Tracker.Client.Relation
  ] do
  def encode(struct, opts) do
    map =
      struct
      |> Map.take(@for.serializable_fields())
      |> Casex.to_camel_case()

    Jason.Encode.map(map, opts)
  end
end
