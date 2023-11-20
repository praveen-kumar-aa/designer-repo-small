namespace: node.level1.level2
flow:
  name: newOne1133AM
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
          b2aa12c4-52e1-566d-835f-085b5fe0124e:
            targetId: bb469c5a-1014-170c-1f31-1ce7a4f3d755
            port: SUCCESS
    results:
      SUCCESS:
        bb469c5a-1014-170c-1f31-1ce7a4f3d755:
          x: 500
          'y': 140
