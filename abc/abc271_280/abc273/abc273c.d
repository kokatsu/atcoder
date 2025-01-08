import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    auto B = A.dup.sort.uniq.array;
    auto L = B.length;
    auto C = B.zip(L.iota).assocArray;

    auto res = new ulong[](N);
    foreach (a; A) {
        ++res[L - C[a] - 1];
    }

    writefln("%(%d\n%)", res);
}
