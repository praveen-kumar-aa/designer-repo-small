namespace: node
flow:
  name: newFlowIsAddedByPRaveen
  workflow:
    - aaaaaaaaaaaaaaa:
        do:
          node.level1.aaaaaaaaaaaaaaa: []
        navigate:
          - SUCCESS: do_nothing
          - FAILURE: on_failure
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
      aaaaaaaaaaaaaaa:
        x: 400
        'y': 400
      do_nothing:
        x: 280
        'y': 160
        navigate:
          78a9a239-97c1-b711-9061-a3a1f636d7d3:
            targetId: e937d2c3-a2bf-ddc7-fd51-28fdce03541f
            port: SUCCESS
    results:
      SUCCESS:
        e937d2c3-a2bf-ddc7-fd51-28fdce03541f:
          x: 520
          'y': 160
