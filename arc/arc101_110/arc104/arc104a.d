import std;

void main() {
    int A, B;
    readfln("%d %d", A, B);

    int X = (A + B) / 2;
    int Y = (A - B) / 2;

    string res = format("%d %d", X, Y);
    res.writeln;
}
