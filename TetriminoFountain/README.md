## Tetrimino Fountain

This is a particle system where particles are tetris pieces.

Each piece have its own shape and color, but they all inherit from the Particle class.

Since they are particles, they have velocity, acceleration, angular velocity, size and a lifespan.

All these parameters can be adjusted in the Particle class.

The particles are wrapped in a ParticleSystem, that's responsible for positioning, adding particles, and removing them once their lifespan is over.

A live version can be seen at [openProcessing](https://openprocessing.org/sketch/1612572)


