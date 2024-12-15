import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto A = readln.chomp.split.to!(int[]);
    auto B = readln.chomp.split.to!(int[]);

    B.sort;

    auto C = A.assocArray(true.repeat);

    auto res = B.uniq.filter!(x => x in C).array;

    if (res.empty)
        return;

    res.sort;

    writefln("%(%d\n%)", res);
}
