namespace: node.level1.level2
flow:
  name: f1
  workflow:
    - do_nothing:
        do:
          io.cloudslang.base.utils.do_nothing: []
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
      random_number_generator:
        x: 400
        'y': 160
        navigate:
          e28b7de7-399a-1592-be88-5d1e5f587e32:
            targetId: cbe9110a-819e-5a70-d115-0c5700185214
            port: SUCCESS
      do_nothing:
        x: 240
        'y': 160
    results:
      SUCCESS:
        cbe9110a-819e-5a70-d115-0c5700185214:
          x: 640
          'y': 160
