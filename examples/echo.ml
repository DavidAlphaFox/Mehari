let () =
  Mehari_unix.run (fun req ->
      match Mehari.uri req |> Uri.verbatim_query with
      | None -> Mehari.respond_text ""
      | Some msg -> Mehari.respond_text msg)
