########################################################################################################################
#!!
#! @input flow_input_4: flow inp 4 is sensitive
#!!#
########################################################################################################################
namespace: node.level1.level2
flow:
  name: f2
  inputs:
    - flow_input_0: '1'
    - flow_input_1: '2'
    - flow_input_2: '3'
    - flow_input_3: '4'
    - flow_input_4:
        default: '5'
        private: true
        sensitive: true
    - flow_input_5
    - flow_input_6
    - flow_input_7
    - flow_input_8
    - flow_input_9
    - flow_input_10
    - flow_input_11
    - flow_input_12
    - flow_input_13
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
