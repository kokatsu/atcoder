import std;

void main() {
    int X, Y, Z;
    readf("%d %d %d\n", X, Y, Z);

    auto res = iota(1, X/Y+1).filter!(i => (Y + Z) * i + Z <= X).maxElement;
    res.writeln;
}