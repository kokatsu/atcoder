import std;

void main() {
    int a, b, c;
    readf("%d %d %d\n", a, b, c);

    string res = (a + b + c == max(a, b, c) * 2) ? "Yes" : "No";
    res.writeln;
}
