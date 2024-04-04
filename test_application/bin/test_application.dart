void main() {
  const cuboid = Cuboid(1, 2, 3);
  print('Cuboid Volume = ${cuboid.Volume}');
  print('Cuboid Surface Area = ${cuboid.SurfaceArea}');

  const cube = Cube(2);
  print('Cube Volume = ${cube.Volume}');
  print('Cube Surface Area = ${cube.SurfaceArea}');
}

class Cuboid {
  final int length;
  final int width;
  final int height;

  const Cuboid(this.length, this.width, this.height);

  int get SurfaceArea => 2 * (length * width + width * height + length * height);
  int get Volume => length * width * height;
}

class Cube extends Cuboid {
  const Cube(int length) : super(length, length, length);
}