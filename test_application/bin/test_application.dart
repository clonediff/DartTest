void main() {
  const cuboid = Cuboid(1, 2, 3);
  print('Cuboid Volume = ${cuboid.volume}');
  print('Cuboid Surface Area = ${cuboid.surfaceArea}');

  const cube = Cube(2);
  print('Cube Volume = ${cube.volume}');
  print('Cube Surface Area = ${cube.surfaceArea}');
}

class Cuboid {
  final int length;
  final int width;
  final int height;

  const Cuboid(this.length, this.width, this.height);

  int get surfaceArea => 2 * (length * width + width * height + length * height);
  int get volume => length * width * height;
}

class Cube extends Cuboid {
  const Cube(int length) : super(length, length, length);
}