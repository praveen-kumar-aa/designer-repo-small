namespace: node.level1.level2
flow:
  name: praveen1
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
          4669c994-8197-b4fa-cbed-629cdbb8c3c7:
            targetId: 5537c688-fb6e-5aaa-dcd9-cf9c0f754a92
            port: SUCCESS
    results:
      SUCCESS:
        5537c688-fb6e-5aaa-dcd9-cf9c0f754a92:
          x: 500
          'y': 140
