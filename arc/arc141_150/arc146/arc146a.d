import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split;

    A.sort!"a.length == b.length ? a > b : a.length > b.length";

    string res = A[0] ~ A[1] ~ A[2];
    auto arr = iota(3).array;
    foreach (p; arr.permutations) {
        res = max(res, A[p[0]]~A[p[1]]~A[p[2]]);
    }

    res.writeln;
}