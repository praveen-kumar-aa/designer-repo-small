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
        x: 200
        'y': 120
        navigate:
          78a9a239-97c1-b711-9061-a3a1f636d7d3:
            targetId: e937d2c3-a2bf-ddc7-fd51-28fdce03541f
            port: SUCCESS
    results:
      SUCCESS:
        e937d2c3-a2bf-ddc7-fd51-28fdce03541f:
          x: 480
          'y': 120
