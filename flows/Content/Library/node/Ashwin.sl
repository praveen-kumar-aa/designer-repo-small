namespace: node
flow:
  name: Ashwin
  workflow:
    - flow12345:
        do:
          node.level1.flow12345: []
        navigate: []
  results:
    - SUCCESS
extensions:
  graph:
    steps:
      flow12345:
        x: 320
        'y': 320
    results:
      SUCCESS:
        6445d7fb-2bd2-3ce2-96b1-e7f512ba7720:
          x: 400
          'y': 200
