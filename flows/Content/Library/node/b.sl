namespace: node
flow:
  name: b
  workflow:
    - random_number_generator:
        do:
          io.cloudslang.base.math.random_number_generator:
            - min: '-999'
            - max: '000'
        navigate:
          - SUCCESS: do_nothing
          - FAILURE: on_failure
    - do_nothing:
        do:
          io.cloudslang.base.utils.do_nothing: []
        navigate:
          - SUCCESS: a
          - FAILURE: on_failure
    - a:
        do:
          node.a: []
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
        x: 320
        'y': 200
      do_nothing:
        x: 480
        'y': 200
      a:
        x: 440
        'y': 40
        navigate:
          49035bf1-a149-8a7a-07ed-0225ad1809a2:
            targetId: 903b7849-4fde-09dd-63e7-4d67cb23c532
            port: SUCCESS
    results:
      SUCCESS:
        903b7849-4fde-09dd-63e7-4d67cb23c532:
          x: 680
          'y': 200