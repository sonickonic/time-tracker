defimpl Jason.Encoder, for: [Comerier.Tracker.Project.Relation] do
  alias Comerier.Tracker.Project

  def encode(struct, opts) do
    map =
      struct
      |> Map.take(Project.Relation.serializable_fields())
      |> Casex.to_camel_case()

    Jason.Encode.map(map, opts)
  end
end
