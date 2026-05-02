import std;

void main() {
    int X;
    readfln("%d", X);

    string res = clamp(X, 3, 18) == X ? "Yes" : "No";
    res.writeln;
}
