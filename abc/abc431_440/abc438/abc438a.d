import std;

void main() {
    int D, F;
    readf("%d %d\n", D, F);

    int res = 7 - (D - F) % 7;
    res.writeln;
}
