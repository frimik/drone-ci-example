local Pipeline(name, image) = {
  kind: 'pipeline',
  type: 'kubernetes',
  name: name,

  steps: [
    {
      name: 'test',
      image: image,
      commands: [
        'echo Hello Drone',
      ],
    },
  ],
};

[
  Pipeline('go-1-21', 'golang:1.21-bookworm'),
  Pipeline('go-1-22-rc', 'golang:1.22-rc-bookwork'),
]
