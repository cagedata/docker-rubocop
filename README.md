# Rubocop Runner

Run Rubocop in CI without all the build. This container will take a folder of
Ruby code and test it with Rubocop. It was built so that we could build our
applications and run Rubocop against them in CI without having to install the
rest of our bundle.

## Usage

Mount your project at `/app` in the image and let Rubocop run wild:

`docker run --rm --volume "$PWD:/app" cagedata/rubocop`

If a `.rubocop.yml` config file is found in the root of your project, the
image will pick it up for the tests.
