import std;

void main() {
    long N;
    readf("%d\n", N);

    auto a = readln.chomp.split.to!(long[]);

    a[] -= 1;

    auto same = N.iota
        .count!(i => i == a[i])
        .to!long;
    auto diff = N.iota
        .count!(i => i < a[i] && i == a[a[i]])
        .to!long;

    auto res = same * (same - 1) / 2 + diff;
    res.writeln;
}
