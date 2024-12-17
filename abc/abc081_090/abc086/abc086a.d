import std;

void main() {
    int a, b;
    readf("%d %d\n", a, b);

    int c = a * b;

    string res = c % 2 == 0 ? "Even" : "Odd";
    res.writeln;
}
