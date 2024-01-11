import std;

void main() {
    int A, B;
    readf("%d\n%d\n", A, B);

    string res = format("%b", A + B * 7 <= 30);
    res.writeln;
}