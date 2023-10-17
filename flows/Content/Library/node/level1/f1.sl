namespace: node.level1
flow:
  name: f1
  workflow:
    - b:
        do:
          node.b: []
        navigate:
          - FAILURE: on_failure
          - SUCCESS: SUCCESS
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      b:
        x: 240
        'y': 240
        navigate:
          24b8c92f-042e-2382-c6cf-0fc9dce75c08:
            targetId: b1a8fea5-c16c-0b15-4f2b-d65be4e6aebb
            port: SUCCESS
    results:
      SUCCESS:
        b1a8fea5-c16c-0b15-4f2b-d65be4e6aebb:
          x: 640
          'y': 240
