# Used by "mix format"
[
  line_length: 120,
  inputs: ["{mix,.formatter}.exs", "{config,lib,test}/**/*.{ex,exs}"],
  export: [
    locals_without_parens: [
      group: 1,
      pipe: 1,
      pipe: 2,
      route: 2,
      route: 3,
      view: 1,
      embed_templates: 1
    ]
  ]
]
