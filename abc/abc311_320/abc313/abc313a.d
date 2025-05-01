import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    int res;
    if (N > 1) {
        res = max(0, A[1 .. $].maxElement - A[0] + 1);
    }

    res.writeln;
}
