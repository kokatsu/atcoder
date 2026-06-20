import std;

void main() {
    int X, Y;
    readfln("%d %d", X, Y);

    string res = X * 9 == Y * 16 ? "Yes" : "No";
    res.writeln;
}
