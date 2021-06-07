locals {
  species       = ["rabbit", "mouse", "dog", "cat", "horse", "badger", "giraffe", "whale", "snake", "pigeon", "trout", "hyena", "eagle"]
  personalities = ["wild", "kind", "fearful", "aggressive", "hungry", "shy", "noisy", "hurt", "sleepy", "marvelous", "spooky", "sad"]

  choices = {
    personalities = join("_", local.personalities)
    species       = join("_", local.species)
  }
}

resource "random_integer" "personality" {
  min = 0
  max = length(local.personalities) - 1

  keepers = local.choices
}

resource "random_integer" "specie" {
  min = 0
  max = length(local.species) - 1

  keepers = local.choices
}
