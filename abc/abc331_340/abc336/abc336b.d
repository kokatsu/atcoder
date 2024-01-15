import std;

int ctz(int x) {
    string b = format("%b", x);
    auto g = b.group.array;
    return g[$-1][0] == '0' ? g[$-1][1].to!int : 0;
}

void main() {
    int N;
    readf("%d\n", N);

    int res = ctz(N);
    res.writeln;
}