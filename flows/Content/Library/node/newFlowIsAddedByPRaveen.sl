namespace: node
flow:
  name: newFlowIsAddedByPRaveen
  workflow:
    - do_nothing:
        do:
          io.cloudslang.base.utils.do_nothing: []
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      do_nothing:
        x: 280
        'y': 160
        navigate:
          7d3c773e-f8c0-a7e4-0d05-f1e0e7b98512:
            targetId: 5d17355f-a3a4-f9dc-b2ae-e9978a27fd73
            port: SUCCESS
    results:
      SUCCESS:
        5d17355f-a3a4-f9dc-b2ae-e9978a27fd73:
          x: 440
          'y': 160
