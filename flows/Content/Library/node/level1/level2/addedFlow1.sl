namespace: node.level1.level2
flow:
  name: addedFlow1
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
          190324c0-86bd-9979-ab94-b249f1b662b0:
            targetId: 683d5e3b-7fc1-c1c6-2a0e-789d328f62e7
            port: SUCCESS
    results:
      SUCCESS:
        683d5e3b-7fc1-c1c6-2a0e-789d328f62e7:
          x: 500
          'y': 140
