import std;

void main() {
    int N;
    readf("%d\n", N);

    auto res = N.to!string(16);
    if (res.length == 1)
        res = "0" ~ res;

    res.writeln;
}
