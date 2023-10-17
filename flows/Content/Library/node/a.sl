namespace: node
flow:
  name: a
  workflow:
    - add_numbers:
        do:
          io.cloudslang.base.math.add_numbers:
            - value1: '1'
            - value2: '2'
            - custom: '56'
        navigate:
          - SUCCESS:
              next_step: SUCCESS
              ROI: '2'
          - FAILURE: on_failure
  results:
    - SUCCESS
    - FAILURE
extensions:
  graph:
    steps:
      add_numbers:
        x: 160
        'y': 200
        navigate:
          d02768f2-9081-6968-de13-e4313218575d:
            targetId: f77cf68f-a23d-8f5f-effc-36877c734507
            port: SUCCESS
    results:
      SUCCESS:
        f77cf68f-a23d-8f5f-effc-36877c734507:
          x: 530
          'y': 220
