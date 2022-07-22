namespace: flows
flow:
  name: flow_1
  workflow:
    - How_do_I__Iterate_through_a_list:
        do_external:
          53f0bf03-0e47-42c8-8df0-334d8c1c59cd: []
        navigate:
          - failure: on_failure
          - success: SUCCESS
  results:
    - SUCCESS
    - FAILURE
extensions:
  graph:
    steps:
      How_do_I__Iterate_through_a_list:
        x: 177.0182342529297
        'y': 111.0390625
        navigate:
          1d83895a-e898-f907-d512-eb6e93d766bc:
            targetId: 21badfc4-a123-6607-cb7a-b2bde4ebdb64
            port: success
    results:
      SUCCESS:
        21badfc4-a123-6607-cb7a-b2bde4ebdb64:
          x: 559.9895629882812
          'y': 110.83071899414062
