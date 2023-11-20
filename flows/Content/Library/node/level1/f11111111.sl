namespace: node.level1
flow:
  name: f11111111
  workflow:
    - do_nothing:
        do:
          io.cloudslang.base.utils.do_nothing: []
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  results:
    - SUCCESS
    - FAILURE
extensions:
  graph:
    steps:
      do_nothing:
        x: 240
        'y': 160
        navigate:
          43ec8e5b-4a6d-8648-e4dd-334c5e5ac99d:
            targetId: 4e45e20d-21bb-bac1-702d-f674cf022b0b
            port: SUCCESS
    results:
      SUCCESS:
        4e45e20d-21bb-bac1-702d-f674cf022b0b:
          x: 500
          'y': 140
