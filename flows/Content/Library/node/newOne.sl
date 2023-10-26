namespace: node
flow:
  name: newOne
  workflow:
    - flow12345:
        do:
          node.level1.flow12345: []
        navigate: []
  results: []
extensions:
  graph:
    steps:
      flow12345:
        x: 160
        'y': 240
