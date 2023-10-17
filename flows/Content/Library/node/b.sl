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
        navigate:
          f629fbce-8079-0f8c-b7a7-272aa8939322:
            targetId: 903b7849-4fde-09dd-63e7-4d67cb23c532
            port: SUCCESS
    results:
      SUCCESS:
        903b7849-4fde-09dd-63e7-4d67cb23c532:
          x: 680
          'y': 200
