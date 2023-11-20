namespace: node.level1
flow:
  name: aaaaaaaaaaaaaaa
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
          15588df1-9f66-a4fa-829f-c32477f98eb0:
            targetId: 9d587ec1-b0e8-a187-2bf5-e915a5a7052b
            port: SUCCESS
    results:
      SUCCESS:
        9d587ec1-b0e8-a187-2bf5-e915a5a7052b:
          x: 500
          'y': 140
