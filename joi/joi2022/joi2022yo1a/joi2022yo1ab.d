import std;

void main() {
    int X, Y, Z;
    readf("%d\n%d\n%d\n", X, Y, Z);

    string res = format("%b", X + Y <= Z);
    res.writeln;
}