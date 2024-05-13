import std;

void main() {
    int N;
    readf("%d\n", N);

    auto S = N.to!real.sqrt.floor.to!int;

    int res = N == S ^^ 2 ? 0 : (S + 1) ^^ 2 - N;
    res.writeln;
}