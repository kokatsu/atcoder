import std;

void main() {
    long N, K;
    readf("%d %d\n", N, K);

    auto A = readln.chomp.split.to!(long[]);

    auto U = A.sort.filter!(x => x <= K).uniq.array;

    long res = K * (K + 1) / 2 - U.sum;
    res.writeln;
}