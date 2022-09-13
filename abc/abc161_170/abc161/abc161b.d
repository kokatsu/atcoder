import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto A = readln.chomp.split.to!(int[]);

    auto S = A.sum;

    int cnt;
    foreach (a; A) {
        if (a * M * 4 >= S) ++cnt;
    }

    writeln(cnt >= M ? "Yes" : "No");
}