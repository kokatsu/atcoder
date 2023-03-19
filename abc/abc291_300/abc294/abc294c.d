import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto A = readln.chomp.split.to!(int[]);
    auto B = readln.chomp.split.to!(int[]);

    int[] res = A.dup ~ B.dup;

    void f(ref int[] arr) {
        auto tmp = arr.dup.sort.uniq.array.assumeSorted;
        foreach (ref a; arr) {
            a = tmp.lowerBound(a).length.to!int;
        }
    }

    f(res);

    res[] += 1;

    writefln("%(%s %)", res[0..N]);
    writefln("%(%s %)", res[N..$]);
}