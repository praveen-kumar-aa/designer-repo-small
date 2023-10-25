namespace: node.level1.level2
flow:
  name: newOne1133AM
  workflow:
    - multiply_numbers:
        do:
          io.cloudslang.base.math.multiply_numbers:
            - value1: '1'
            - value2: '2'
        navigate:
          - SUCCESS: !<tag:yaml.org,2002:js/undefined> ''
  results: []
extensions:
  graph:
    steps:
      multiply_numbers:
        x: 260
        'y': 220
