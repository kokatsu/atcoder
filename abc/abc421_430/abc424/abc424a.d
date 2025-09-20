import std;

void main() {
    int a, b, c;
    readf("%d %d %d\n", a, b, c);

    string res = a == b || b == c || c == a ? "Yes" : "No";
    res.writeln;
}
