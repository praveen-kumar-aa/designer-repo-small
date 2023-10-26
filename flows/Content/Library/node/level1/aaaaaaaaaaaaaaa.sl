namespace: node.level1
flow:
  name: aaaaaaaaaaaaaaa
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
        x: 480
        'y': 120
