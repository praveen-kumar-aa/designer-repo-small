namespace: node
flow:
  name: a
  workflow:
    - How_do_I__Create_a_parallel_flow:
        do_external:
          d012e1c3-704f-426f-a380-b2425a166d39: []
        navigate:
          - success: SUCCESS
  results:
    - SUCCESS
extensions:
  graph:
    steps:
      How_do_I__Create_a_parallel_flow:
        x: 320
        'y': 200
        navigate:
          a24fbdca-b17d-3e5f-5833-30bdd751b482:
            targetId: f77cf68f-a23d-8f5f-effc-36877c734507
            port: success
    results:
      SUCCESS:
        f77cf68f-a23d-8f5f-effc-36877c734507:
          x: 530
          'y': 220

