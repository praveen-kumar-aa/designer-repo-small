namespace: node.level1.level2
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
        x: 320
        'y': 160