namespace: node.level1.level2
flow:
  name: f2
  workflow:
    - multiply_numbers:
        do:
          io.cloudslang.base.math.multiply_numbers:
            - value1: '1'
            - value2: '2'
        navigate:
          - SUCCESS: round
    - round:
        do:
          io.cloudslang.base.math.round:
            - value1: '3'
        navigate:
          - SUCCESS: subtract_numbers
          - FAILURE: on_failure
    - subtract_numbers:
        do:
          io.cloudslang.base.math.subtract_numbers:
            - value1: '4'
            - value2: '5'
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      multiply_numbers:
        x: 240
        'y': 200
      round:
        x: 400
        'y': 200
      subtract_numbers:
        x: 520
        'y': 200
        navigate:
          583881c8-53ea-8943-e6c0-c3ed7a484f8e:
            targetId: 39e4a025-0df5-1a5d-85c0-30569fc3f092
            port: SUCCESS
    results:
      SUCCESS:
        39e4a025-0df5-1a5d-85c0-30569fc3f092:
          x: 680
          'y': 200
