namespace: node.level1.level2
flow:
  name: f123
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
          7f6dc51b-fa95-742f-3832-d61ece7afb65:
            targetId: e74603e7-ecaf-8c3f-358b-df587b4e75b5
            port: SUCCESS
    results:
      SUCCESS:
        e74603e7-ecaf-8c3f-358b-df587b4e75b5:
          x: 500
          'y': 140
