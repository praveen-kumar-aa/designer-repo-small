namespace: node.level1.level2
flow:
  name: newFlowPraveen
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
          fb097a03-6568-1364-454f-1f371698d85d:
            targetId: dc7f1352-f789-9da7-cc08-c5a2b3342b1a
            port: SUCCESS
    results:
      SUCCESS:
        dc7f1352-f789-9da7-cc08-c5a2b3342b1a:
          x: 500
          'y': 140
