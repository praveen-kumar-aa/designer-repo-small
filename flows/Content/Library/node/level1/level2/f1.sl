namespace: node.level1.level2
flow:
  name: f1
  workflow:
    - a:
        do:
          node.a: []
        navigate:
          - SUCCESS: random_number_generator
          - FAILURE: on_failure
    - random_number_generator:
        do:
          io.cloudslang.base.math.random_number_generator:
            - min: '50'
            - max: '50'
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      a:
        x: 240
        'y': 160
      random_number_generator:
        x: 440
        'y': 160
        navigate:
          e28b7de7-399a-1592-be88-5d1e5f587e32:
            targetId: cbe9110a-819e-5a70-d115-0c5700185214
            port: SUCCESS
    results:
      SUCCESS:
        cbe9110a-819e-5a70-d115-0c5700185214:
          x: 640
          'y': 160
