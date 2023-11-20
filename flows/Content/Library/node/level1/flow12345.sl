namespace: node.level1
flow:
  name: flow12345
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
          52f34933-e133-7c91-0e60-069d035fbe47:
            targetId: d99dcdbe-573a-cbf5-17ee-2392edbb756e
            port: SUCCESS
    results:
      SUCCESS:
        d99dcdbe-573a-cbf5-17ee-2392edbb756e:
          x: 500
          'y': 140
