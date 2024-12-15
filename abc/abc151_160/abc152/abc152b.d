import std;

void main() {
    dchar a, b;
    readf("%c %c\n", a, b);

    auto S = a.repeat(b - '0').to!string;
    auto T = b.repeat(a - '0').to!string;

    string res = min(S, T);
    res.writeln;
}
