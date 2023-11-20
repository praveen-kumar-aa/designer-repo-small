namespace: node.level1.level2
flow:
  name: new888
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
          d5ed0d2c-5d33-38c2-8496-c6b38bd891cc:
            targetId: f9344043-3fa1-946f-83ed-f847988e53b8
            port: SUCCESS
    results:
      SUCCESS:
        f9344043-3fa1-946f-83ed-f847988e53b8:
          x: 500
          'y': 140
