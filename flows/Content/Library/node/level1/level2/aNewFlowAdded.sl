namespace: node.level1.level2
flow:
  name: aNewFlowAdded
  workflow:
    - f1:
        do:
          node.level1.level2.f1: []
        navigate:
          - FAILURE: on_failure
  results:
    - FAILURE
extensions:
  graph:
    steps:
      f1:
        x: 160
        'y': 200
