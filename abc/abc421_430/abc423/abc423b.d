import std;

void main() {
    int N;
    readf("%d\n", N);

    int[] L = readln.chomp.split.to!(int[]);

    int[] P = N.iota.filter!(i => L[i] == 1).array;

    int res;
    size_t len = P.length;
    if (len > 0) {
        res = P[len - 1] - P[0];
    }

    res.writeln;
}
