import std;

void main() {
    int X;
    readf("%d\n", X);

    string res = format("%b", X % 7 == 2);
    res.writeln;
}
