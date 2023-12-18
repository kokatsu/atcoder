import std;

void main() {
    int K, N, M;
    readf("%d\n%d\n", K, N);

    auto A = readln.chomp.split.to!(int[]);

    readf("%d\n", M);

    auto B = readln.chomp.split.to!(int[]);

    int[int] cnts;
    foreach (a; A) ++cnts[a+K];

    int res;
    foreach (b; B) {
        if (b in cnts) res += cnts[b];
    }

    res.writeln;
}