import std;

void main() {
    int R, C;
    readf("%d %d\n", R, C);

    bool isBlack = min(R, 16 - R, C, 16 - C) % 2 == 1;

    string res = isBlack ? "black" : "white";
    res.writeln;
}
